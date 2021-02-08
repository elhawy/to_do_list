<?php

namespace App\Transformers;

use App\Utilities\CSVGenerator;

abstract class AbstractReportFormatter
{
    protected $items;

    public function __construct($items)
    {
        $this->items = $items;
    }

    abstract protected function format();
    //abstract protected function export();

    public static function createFormatter($type, $items, $requestOptions = [])
    {
        if ($type == 'v1') {
            return app(ReportV1Format::class, ['items' => $items, 'requestOptions' => $requestOptions]);
        } elseif ($type == 'v2') {
            return app(ReportV2Fromat::class, ['items' => $items]);
        }
    }

    public function export()
    {
        $reportData = $this->format();
        $csvGenerator = app(CSVGenerator::class);
        return $csvGenerator->exportCsv($reportData, $this->columns, time().'_'.$this->reportName);
    }
}
