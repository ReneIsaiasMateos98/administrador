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
        //Seeder con datos relacionados
        $this->call(tablasRelacionadasSeeder::class);

     //   $this->call(PermissionsTableSeeder::class);
        
        $this->call(ProductTableSeeder::class);
        
        $this->call(UsersTableSeederSeeder::class);
        
    }
}
