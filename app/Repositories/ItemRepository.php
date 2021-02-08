<?php

namespace App\Repositories;

use App\Models\Item;
use App\Repositories\Interfaces\ItemRepositoryInterface;
use Carbon\Carbon;

class ItemRepository extends BaseRepository implements ItemRepositoryInterface
{
    public function __construct()
    {
        $this->model = new Item;
    }

    public function listItems(array $requestOptions)
    {
        if (!empty($requestOptions['status'])) {
            $this->model = $this->model->where('status', $requestOptions['status']);
        }
        if (!empty($requestOptions['from'])) {
            $this->model = $this->model->whereDate('created_at', ">=", $requestOptions['from']);
        }

        if (!empty($requestOptions['to'])) {
            $this->model = $this->model->whereDate('created_at', "<=", $requestOptions['to']);
        }
        return $this->model->with('category')->get();
    }
}
