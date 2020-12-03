<?php

use Illuminate\Database\Seeder;
use App\User;
use App\Product;
use App\Permission\Model\Role;
use App\Permission\Model\Permission;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;

class tablasRelacionadasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Desactivamos los foreign de las tablas, para poder vaciarlas
        DB::statement("SET foreign_key_checks = 0");

            //vamos a trunquear las tablas
            DB::table('role_user')->truncate();
            DB::table('permission_role')->truncate();
            DB::table('permission_user')->truncate();
            
            //trunquear los modelos
            Permission::truncate();
            Role::truncate();
            User::truncate();
            Product::truncate();

        //Activamos los foreign de las tablas, para que esten bien relacinadas
        DB::statement("SET foreign_key_checks = 1");

        //crearemos el user ADMIN
        $useradmin = User::where('email','admin@admin.com')->first();
        if ($useradmin){
            $useradmin->delete();
        }
        $useradmin = User::create([
            'name' => 'Admin',
            'email' => 'admin@admin.com',
            'password' => Hash::make('admin')
        ]);
        //Rol de Admin

        $roladmin = Role::create([
            'name'=> 'Admin',
            'slug'=> 'admin',
            'description'=> 'Administrador',
            'full-access'=> 'yes'
        ]);
        //relacion role_user
        $useradmin -> roles()->sync([$roladmin->id]);
        
        //Crearemos diferentes permisos

        //Declaramos un arreglo en el que le pasaremos todos los permisos de los reles
        $permission_all = [];

            //creamos los permisos mas importantes de roles
            $permission = Permission::create([
                'name' => 'List role',
                'slug' => 'role.index',
                'description' => 'A user can list role',
            ]);
            $permission_all[] = $permission->id;

            $permission = Permission::create([
                'name' => 'Show role',
                'slug' => 'role.show',
                'description' => 'A user can see role',
            ]);
            $permission_all[] = $permission->id;

            $permission = Permission::create([
                'name' => 'Create role',
                'slug' => 'role.create',
                'description' => 'A user can create role',
            ]);
            $permission_all[] = $permission->id;

            $permission = Permission::create([
                'name' => 'Edit role',
                'slug' => 'role.edit',
                'description' => 'A user can edit role',
            ]);
            $permission_all[] = $permission->id;

            $permission = Permission::create([
                'name' => 'Destroy role',
                'slug' => 'role.destroy',
                'description' => 'A user can destroy role',
            ]);
            $permission_all[] = $permission->id;

        //relacion permission_role
      //  $roladmin -> permissions()->sync( $permission_all );

        //Ahora creamos todos los permisos de los usuarios que se van a relacionar
        //$permission_all = [];

            //creamos los permisos mas importantes de los usuarios
            $permission = Permission::create([
                'name' => 'List user',
                'slug' => 'user.index',
                'description' => 'A user can list user',
            ]);
            $permission_all[] = $permission->id;
            /* el metodo de create no se implementa ya que los usuario se crean en el login
             $permission = Permission::create([
                'name' => 'Create role',
                'slug' => 'role.create',
                'description' => 'A user can create role',
            ]);            
            $permission_all[] = $permission->id;
            */ 
            $permission = Permission::create([
                'name' => 'Show user',
                'slug' => 'user.show',
                'description' => 'A user can see user',
            ]);
            $permission_all[] = $permission->id;
           
            $permission = Permission::create([
                'name' => 'Edit user',
                'slug' => 'user.edit',
                'description' => 'A user can edit user',
            ]);
            $permission_all[] = $permission->id;

            $permission = Permission::create([
                'name' => 'Destroy user',
                'slug' => 'user.destroy',
                'description' => 'A user can destroy user',
            ]);
            $permission_all[] = $permission->id;
        
            //creamos los permisos mas importantes de los productos
            $permission = Permission::create([
                'name' => 'List product',
                'slug' => 'product.index',
                'description' => 'A user can list product',
            ]);
            $permission_all[] = $permission->id;

            $permission = Permission::create([
                'name' => 'Show product',
                'slug' => 'product.show',
                'description' => 'A user can see product',
            ]);
            $permission_all[] = $permission->id;

            $permission = Permission::create([
                'name' => 'Create product',
                'slug' => 'product.create',
                'description' => 'A user can create product',
            ]);
            $permission_all[] = $permission->id;

            $permission = Permission::create([
                'name' => 'Edit product',
                'slug' => 'product.edit',
                'description' => 'A user can edit product',
            ]);
            $permission_all[] = $permission->id;

            $permission = Permission::create([
                'name' => 'Destroy product',
                'slug' => 'product.destroy',
                'description' => 'A user can destroy product',
            ]);
            $permission_all[] = $permission->id;
        //relacion permission_user
        $roladmin -> permissions()->sync( $permission_all );
    }
}
