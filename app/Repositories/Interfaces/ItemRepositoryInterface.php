<?php

namespace App\Repositories\Interfaces;

interface ItemRepositoryInterface extends BaseRepositoryInterface
{
    public function listItems(array $requestOptions);
}
