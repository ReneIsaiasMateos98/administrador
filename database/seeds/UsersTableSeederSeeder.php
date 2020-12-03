<?php

use Illuminate\Database\Seeder;
use App\Permission\Model\Role;

class UsersTableSeederSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        /*
        Role::create([
            'name' => 'Admin',
            'slug' => 'admin',
            'description' => 'Admin',
            'full-access' => 'Yes',
        ]);
        */
        factory(App\User::class, 50)->create(); 

        
    }
}
