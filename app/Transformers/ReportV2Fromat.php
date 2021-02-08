<?php

namespace App\Transformers;

use App\Utilities\CSVGenerator;

class ReportV2Fromat extends AbstractReportFormatter
{
    protected $reportName = 'report_v2';

    public function __construct($items)
    {
        parent::__construct($items);
    }

    protected $columns = ['Date', 'Category', 'Description', 'Amount Of Time Spent'];

    public function format()
    {
        $reportData = [];
        foreach ($this->items as $item) {
            $reportData[] = [
                'date' => $item->created_at,
                'category' => $item->category ? $item->category->name : '',
                'description' => $item->description,
                'time_spent' => !empty($item->time_spent) ? gmdate("H:i:s", $item->time_spent) : 0,
            ];
        }
        return $reportData;
    }
}
