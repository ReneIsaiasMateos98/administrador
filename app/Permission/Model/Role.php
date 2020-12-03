<?php

namespace App\Permission\Model;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
     //es : desde aqui
    //en : from here
    protected $fillable = [
        'name', 'slug', 'description', 'full-access', 
    ];

    public function users(){
        //devolvemos la relocion con todos los usuarios que tengan el rol
        //belongsToMany -> es la relacion muchos a muchos
        //withTimeTamps -> hacemos que la tabla intermedia se actualizen los timesTap 
        return $this->belongsToMany('App\User')->withTimesTamps();
    }

    public function permissions(){
        //devolvemos la relocion con todos los usuarios que tengan el rol
        //belongsToMany -> es la relacion muchos a muchos
        //withTimeTamps -> hacemos que la tabla intermedia se actualizen los timesTap 
        return $this->belongsToMany('App\Permission\Model\Permission')->withTimesTamps();
    }
}
