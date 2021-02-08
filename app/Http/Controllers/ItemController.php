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

    public function index(ListItemsRequest $request)
    {
        $requestData = $request->validated();
        $items = $this->itemService->listItems($requestData);
        return response()->json(["items" => $items], 200);
    }

    public function export(ExportReportRequest $request)
    {
        $requestData = $request->validated();
        return $this->itemService->exportReport($requestData);
    }

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
