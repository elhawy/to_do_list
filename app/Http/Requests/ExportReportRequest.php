<?php

namespace App\Http\Requests;

use App\Models\Lookups\ItemStatusLookup;
use Illuminate\Foundation\Http\FormRequest;

class ExportReportRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'type' => 'required|in:v1,v2',
            'status' => 'nullable|in:' . ItemStatusLookup::PENDING . ',' . ItemStatusLookup::IN_PROGRESS . ',' . ItemStatusLookup::DONE,
            'from' => 'nullable|date_format:Y-m-d H:i:s|before:'. gmdate('Y-m-d'),
            'to' => 'nullable|date_format:Y-m-d H:i:s|after_or_equal:from',
            'group_by' => 'nullable|string|in:date,month,year'
        ];
    }
}
