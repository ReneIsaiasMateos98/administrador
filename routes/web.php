<?php

use Illuminate\Support\Facades\Route;
use App\User;
use App\Permission\Model\Role;
use App\RolPermission\Models\Permission;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::resource('/product', 'ProductController')->names('product');

Route::resource('/user', 'UsersController')->names('user');

Route::resource('/permission', 'PermissionController')->names('permission');

Route::resource('/role', 'RoleController')->names('role');

/*

///////////////////////////ROUTES MIDDLEWARE/////////////////////////////
Route::middleware(['auth'])->group(function() {
    //Rutas de los ROLES

    ////creacion
    Route::post('role/store','RoleController@store')->name('role.store')
        ->middleware('permission:role.create');
    ////Listar
    Route::get('role','RoleController@index')->name('role.index')
        ->middleware('permission:role.index');
    ////Ver fomrulario de creacion
    Route::get('role/create','RoleController@create')->name('role.create')
        ->middleware('permission:role.create');
    ////Actuaiizar
    Route::put('role/{role}','RoleController@update')->name('role.update')
        ->middleware('permission:role.edit');
    ////Ver el detalle
    Route::get('role/{role}','RoleController@show')->name('role.show')
        ->middleware('permission:role.show');
    ////Eliminar
    Route::delete('role/{role}','RoleController@destroy')->name('role.destroy')
        ->middleware('permission:role.destroy');
    ////Ver formulario de edicion
    Route::get('role/{role}/edit','RoleController@edit')->name('role.edit')
        ->middleware('permission:role.edit');
    

    //Rutas de los PRODUCTOS

    ////creacion
    Route::post('product/store','ProductController@store')->name('product.store')
        ->middleware('permission:product.create');
    ////Listar
    Route::get('product','ProductController@index')->name('product.index')
        ->middleware('permission:product.index');
    ////Ver fomrulario de creacion
    Route::get('product/create','ProductController@create')->name('product.create')
        ->middleware('permission:product.create');
    ////Actuaiizar
    Route::put('product/{role}','ProductController@update')->name('product.update')
        ->middleware('permission:product.edit');
    ////Ver el detalle
    Route::get('product/{role}','ProductController@show')->name('product.show')
        ->middleware('permission:product.show');
    ////Eliminar
    Route::delete('product/{role}','ProductController@destroy')->name('product.destroy')
        ->middleware('permission:product.destroy');
    ////Ver formulario de edicion
    Route::get('product/{role}/edit','ProductController@edit')->name('product.edit')
        ->middleware('permission:product.edit');


    //Rutas de los USUARIOS

    ////Listar
    Route::get('user','UsersController@index')->name('user.index')
        ->middleware('permission:user.index');
    ////Actuaiizar
    Route::put('user/{role}','UsersController@update')->name('user.update')
        ->middleware('permission:user.edit');
    ////Ver el detalle
    Route::get('user/{role}','UsersController@show')->name('user.show')
        ->middleware('permission:user.show');
    ////Eliminar
    Route::delete('user/{role}','UsersController@destroy')->name('user.destroy')
        ->middleware('permission:user.destroy');
    ////Ver formulario de edicion
    Route::get('user/{role}/edit','UsersController@edit')->name('user.edit')
        ->middleware('permission:user.edit');
});