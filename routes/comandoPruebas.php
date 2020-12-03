<?php
////////////////////////////////////////////estas lineas nos sirven para probar la ruta, en esa ruta agregamos datos a las tablas que hacen referencia es utli alv XD
//PREUBAS

Route::get('/test', function () {
    
    /*
    return Role::create([
        'name'=> 'Admin',
        'slug'=> 'admin',
        'description'=> 'Administrador',
        'full-access'=> 'yes'
    ]);

    return Role::create([
        'name'=> 'Guest',
        'slug'=> 'guest',
        'description'=> 'guest',
        'full-access'=> 'no'
    ]);

     return Role::create([
        'name'=> 'Test',
        'slug'=> 'test',
        'description'=> 'Tester',
        'full-access'=> 'no'
    ]);
    
     $user = User::find(1);
     //con attach se crean los registros cada que se ejecutan, asi que no me es util
    //    $user->roles()->attach([1,2,3]);
    
    //hay otra funcion que elimina los registros que le pasemos el if que es el detach
    //    $user->roles()->detach([3]);

    //PARA ESO LARAVEL NOS PROPORCIONA SYNC -> que revisa si ya exite le dato que le pasamos, si existe lo deja, y quita todos los demas que no cumplan
    $user->roles()->sync([1,2,3]);
     return $user;
        

        return Permission::create([
            'name'=> 'List product',
            'slug'=> 'product.index',
            'description'=> 'A user can list a product',
        ]);
    */

    $role = Role::find(2);

    $role->permissions()->sync([1,2]);

    return $role->permissions;
   
});

//////////////////////////////////aqui va otra
?>