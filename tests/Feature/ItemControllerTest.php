<?php

namespace Tests\Feature;

use Tests\TestCase;
use App\Models\Item;
use App\Models\User;
use App\Models\Category;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\RefreshDatabase;

class ItemControllerTest extends TestCase
{
    use RefreshDatabase;
    use DatabaseMigrations;

    public function tearDown(): void
    {
        \Mockery::close();
    }

    public function setUp(): void
    {
        parent::setUp();
    }
    
    public function test_export_success_response()
    {
        $user = factory(User::class)->create();
        $category = factory(Category::class, 5)->create();
        factory(Item::class, 2)->create([
            'user_id' => $user->id,
            'category_id' => $category[0]->id,
            //'created_at' => \Carbon\Carbon::now()->subMonths(20)
        ]);
        factory(Item::class, 2)->create([
            'user_id' => $user->id,
            'category_id' => $category[0]->id,
            'created_at' => \Carbon\Carbon::now()->subMonths(2),
        ]);

        factory(Item::class, 2)->create([
            'user_id' => $user->id,
            'category_id' => $category[1]->id,
            'created_at' => \Carbon\Carbon::now()->subMonths(5),
        ]);
        factory(Item::class, 2)->create([
            'user_id' => $user->id,
            'category_id' => $category[1]->id,
            'created_at' => \Carbon\Carbon::now()->subMonths(6),
        ]);

        factory(Item::class, 2)->create([
            'user_id' => $user->id,
            'category_id' => $category[2]->id,
            'created_at' => \Carbon\Carbon::now()->subMonths(5),
        ]);
        factory(Item::class, 2)->create([
            'user_id' => $user->id,
            'category_id' => $category[2]->id,
            'created_at' => \Carbon\Carbon::now()->subMonths(6),
        ]);
        $response = $this->get('api/items/export?type=v1&from=2018-02-07 19:44:49&to=2021-02-06 19:44:49&group_by=month');
        $response->assertStatus(200);
        $response->streamedContent();
        $this->assertNotEmpty($response);
    }
}
