<?php

namespace App\Http\Controllers;

use App\Http\Controllers\BaseController as Controller;
use App\Http\Requests\ListItemsRequest;
use App\Http\Requests\ExportReportRequest;
use App\Services\Interfaces\ItemServiceInterface;

class ItemController extends Controller
{
    protected $itemService;

    public function __construct(ItemServiceInterface $itemService)
    {
        $this->itemService = $itemService;
    }

    /**
     * @param ListItemsRequest $request
     * list items from databse
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(ListItemsRequest $request)
    {
        $requestData = $request->validated();
        $items = $this->itemService->listItems($requestData);
        return response()->json(["items" => $items], 200);
    }

    /**
     * @param ExportReportRequest $request
     * export items in format csv file
     * @return mixed stream response file
     */
    public function export(ExportReportRequest $request)
    {
        $requestData = $request->validated();
        return $this->itemService->exportReport($requestData);
    }

    /**
     * @param $itemId
     * start tracking for item move it to in progress
     * @return \Illuminate\Http\JsonResponse
     */
    public function startTracking($itemId)
    {
        $isStarted = $this->itemService->startTracking($itemId);
        if ($isStarted) {
            return $this->accepted(["message" => transe('messages.item_tracked_successfully')]);
        } else {
            return $this->errorResponse(transe('messages.item_tracking_failed'), 500);
        }
    }
}
