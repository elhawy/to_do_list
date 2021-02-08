<?php

namespace App\Utilities;

class CSVGenerator
{
    public function exportCsv($itemsData, $columns, $fileName = 'to_do')
    {
        $fileName = $fileName.'.csv';
        $headers = array(
            "Content-type" => "text/csv",
            "Content-Disposition" => "attachment; filename=$fileName",
            "Pragma" => "no-cache",
            "Cache-Control" => "must-revalidate, post-check=0, pre-check=0",
            "Expires" => "0",
        );
        $callback = function () use ($itemsData, $columns) {
            $file = fopen('php://output', 'w');
            fputcsv($file, $columns);
            foreach ($itemsData as $task) {
                $row = [];
                foreach ($task as $key => $value) {
                    $row[ucwords($key)] = $value;
                }
                fputcsv($file, $row);
            }
            fclose($file);
        };
        return response()->stream($callback, 200, $headers);
    }
}
