<?php

namespace App\Transformers;

use App\Models\Lookups\ItemStatusLookup;
use Carbon\Carbon;

class ReportV1Format extends AbstractReportFormatter
{
    protected $requestOptions;
    protected $reportName = 'report_v1';
    protected $columns = [
        'Date', 'Category', 'number done items', 'number of remaining items',
        'number of newly added items', 'amount of time spent',
    ];

    public function __construct($items, $requestOptions)
    {
        $this->requestOptions = $requestOptions;
        parent::__construct($items);
    }

    public function format()
    {
        $reportData = [];
        $categoryItems = $this->items->groupBy('category_id');
        foreach ($categoryItems as $category => $categoryItem) {
            if (!empty($this->requestOptions['group_by'])) {
                if ($this->requestOptions['group_by'] == 'month') {
                    $dateItems = $categoryItem->groupBy(function ($date) {
                        return Carbon::parse($date->created_at)->format('Y-m');
                    });
                } elseif ($this->requestOptions['group_by'] == 'year') {
                    $dateItems = $categoryItem->groupBy(function ($date) {
                        return Carbon::parse($date->created_at)->format('Y');
                    });
                } elseif ($this->requestOptions['group_by'] == 'date') {
                    $dateItems = $categoryItem->groupBy(function ($date) {
                        return Carbon::parse($date->created_at)->format('Y-m-d');
                    });
                }
            }
            foreach ($dateItems as $date => $items) {
                $done = $items->where('status', ItemStatusLookup::DONE);
                $timeSpent = $done->sum('time_spent');
                $reportData[] = [
                    'date' => $date,
                    'category' => $category,
                    'number_of_done' => $done->count(),
                    'number_of_remaining' => $items->where('status', ItemStatusLookup::PENDING)
                        ->where('time_spent', '>', 0)->count(),
                    'number_of_newly' => $items->where('status', ItemStatusLookup::PENDING)
                        ->where('time_spent', '=', 0)->count(),
                    'time_spent' => !empty($timeSpent) ? gmdate("H:i:s", $timeSpent) : 0,
                ];
            }
        }
        return $reportData;
    }
}
