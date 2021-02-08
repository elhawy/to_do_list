<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call("Database\Seeders\UserDatabaseSeeder");
        $this->call("Database\Seeders\ItemDatabaseSeeder");
    }
}
