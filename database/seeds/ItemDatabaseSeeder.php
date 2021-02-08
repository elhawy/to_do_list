<?php

namespace Database\Seeders;

use App\Models\Item;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Seeder;

class ItemDatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $user = User::first();
        $category = factory(Category::class)->create();
        factory(Item::class, 2)->create([
            'user_id' => $user->id,
            'category_id' => $category->id,
            //'created_at' => \Carbon\Carbon::now()->subMonths(20)
        ]);
    }
}
