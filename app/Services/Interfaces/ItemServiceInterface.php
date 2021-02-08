<?php

namespace App\Services\Interfaces;

use App\Models\Item;
use App\Models\User;

interface ItemServiceInterface
{
    public function createItem(array $itemData): Item;
    public function listItems(array $requestOptions);
    public function startTracking(array $itemId, User $user) : Item;
    public function completeTask(array $itemId, User $user): Item;
    public function checkInProgressStatus(User $user) : bool;
}
