<?php

use Illuminate\Database\Seeder;
use App\Permission\Model\Permission;

class PermissionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
          //Permisos de usuarios
          Permission::create([
        	'name'			=> 'Navegar usuarios',
        	'slug'			=> 'users.index',
        	'description'	=> 'Lista y navega todos los usuarios del sistema',
        ]);

        Permission::create([
        	'name'			=> 'Ver detalle de usuario',
        	'slug'			=> 'users.show',
        	'description'	=> 'Ver en detalle cada usuario del sistema',
        ]);

        Permission::create([
        	'name'			=> 'Edicion de usuarios',
        	'slug'			=> 'users.edit',
        	'description'	=> 'Editar cualquier dato de un usuario del sistema',
        ]);

        Permission::create([
        	'name'			=> 'Eliminar usuario',
        	'slug'			=> 'users.destroy',
        	'description'	=> 'Eliminar cualquier usuario del sistema',
        ]);

        //Permisos de roles
        Permission::create([
        	'name'			=> 'Navegar roles',
        	'slug'			=> 'roles.index',
        	'description'	=> 'Lista y navega todos los roles del sistema',
        ]);

        Permission::create([
        	'name'			=> 'Ver detalles de rol',
        	'slug'			=> 'roles.show',
        	'description'	=> 'Ver en detalle cada rol del sistema',
        ]);

        Permission::create([
        	'name'			=> 'Creacion de roles',
        	'slug'			=> 'roles.create',
        	'description'	=> 'Editar cualquier datos de un rol del sistema',
        ]);

        Permission::create([
        	'name'			=> 'Edicion de roles',
        	'slug'			=> 'roles.edit',
        	'description'	=> 'Editar cualquier datos de un rol del sistema',
        ]);

        Permission::create([
        	'name'			=> 'Eliminar rol',
        	'slug'			=> 'roles.destroy',
        	'description'	=> 'Eliminar cualquier rol del sistema',
        ]);

        //Permisos de productos
        Permission::create([
        	'name'			=> 'Navegar productos',
        	'slug'			=> 'products.index',
        	'description'	=> 'Lista y navega todos los productos del sistema',
        ]);

        Permission::create([
        	'name'			=> 'Ver detalles de producto',
        	'slug'			=> 'products.show',
        	'description'	=> 'Ver en detalle cada producto del sistema',
        ]);

        Permission::create([
        	'name'			=> 'Creacion productos',
        	'slug'			=> 'products.create',
        	'description'	=> 'Editar cualquier datos de un producto del sistema',
        ]);

        Permission::create([
        	'name'			=> 'Edicion productos',
        	'slug'			=> 'products.edit',
        	'description'	=> 'Editar cualquier datos de un producto del sistema',
        ]);

        Permission::create([
        	'name'			=> 'Eliminar producto',
        	'slug'			=> 'products.destroy',
        	'description'	=> 'Eliminar cualquier producto del sistema',
        ]);
    }
}
