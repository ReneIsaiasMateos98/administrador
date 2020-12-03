<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Permission\Model\Role;
use App\Permission\Model\Permission;
use Illuminate\Database\Eloquent\Model;
use App\Http\Requests\CreatedRoleRequest;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $roles = Role::orderBy('id','Asc')->paginate(5);
        return view('role.index',compact('roles'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $permissions = Permission::get();
        return view('role.create',compact('permissions'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CreatedRoleRequest $request)
    {
        /*
        $role = Role::create([
            
        ]);
        if($request->get('permission')){
           // return $request->all();
            $role -> permissions()->sync($request->get('permission'));
        }   */
        $create = Role::create([
            'name' => request('name'),
            'slug' => request('slug'),
            'description' => request('description'),
            'full-access' => 'no',
        ]);
    
       // $success = $create ? $request->session()->flash('success', '¡Registro exitoso!') : $request->session()->flash('success', 'Ooops! Algo salio mal :(');
       return redirect()->route('role.index')->with('status_success','Role saved successfully');    
        //return redirect('addresses/'.$request->session()->get('customer_code'));


        //return $request->all();
        /*
        $request->validate([
            'name' => 'required|max:50|unique:roles,name',
            'slug' => 'required|max:50|unique:roles,slug',
            'full-access' => 'required|in:on,yes,no',
        ]);
        $role = Role::create([$request->all()]);

        if($request->get('permission')){
            return $request->all();
            $role -> permissions()->sync($request->get('permission'));
        }        
        return redirect()->route('role.index')->with('status_success','Role saved successfully');
        */
    }
    

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
