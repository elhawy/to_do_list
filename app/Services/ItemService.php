<?php

namespace App\Services;

use App\Models\Item;
use App\Models\Lookups\ItemStatusLookup;
use App\Models\User;
use App\Repositories\Interfaces\ItemRepositoryInterface;
use App\Services\Interfaces\ItemServiceInterface;
use App\Transformers\AbstractReportFormatter;
use Carbon\Carbon;

class ItemService implements ItemServiceInterface
{
    protected $itemRepository;

    public function __construct(ItemRepositoryInterface $itemRepository)
    {
        $this->itemRepository = $itemRepository;
    }
    public function createItem(array $itemData): Item
    {
        return $this->itemRepository->create($itemData);
    }

    public function listItems(array $requestOptions)
    {
        return $this->itemRepository->listItems($requestOptions);
    }

    public function exportReport(array $requestOptions)
    {
        $items = $this->itemRepository->listItems($requestOptions);
        $items = $this->listItems($requestOptions);
        $reportFormatter = AbstractReportFormatter::createFormatter($requestOptions['type'], $items, $requestOptions);
        return $reportFormatter->export();
    }

    public function startTracking(array $itemId, User $user): Item
    {
        $this->checkInProgressStatus($user);
        $this->itemRepository->where('id', $itemId)->where('user_id', $user->id)->first();
        return $this->itemRepository->updateById($itemId, [
            'status' => ItemStatusLookup::IN_PROGRESS,
            'started_at' => Carbon::now(),
        ]);
    }

    public function completeTask(array $itemId, User $user): Item
    {
        $item = $this->itemRepository->where('id', $itemId)->where('user_id', $user->id)->first();
        $spentTime = 0;
        if ($item->started_at) {
            $carbon = Carbon::now();
            $spentTime = $item->spentTime + $carbon->diffInSeconds($item->started_at);
        }
        return $this->itemRepository->updateById($itemId, [
            'status' => ItemStatusLookup::DONE,
            'spent_time' => $spentTime,
        ]);
    }

    public function checkInProgressStatus(User $user): bool
    {
        $items = $this->itemRepository->where('user_id', $user->id)
            ->where('status', ItemStatusLookup::IN_PROGRESS)
            ->first();
        if (!empty($items)) {
            throw new MultipleInProgressItemsException();
        }
        return true;
    }
}
