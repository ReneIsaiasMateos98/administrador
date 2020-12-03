@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h2>Create User</h2></div>

                <div class="card-body">
                    @include('custom.message')
                    <form action="{{ route('role.store') }}" method="POST">
                    @csrf
                    <div class="container">
                        <h3>Require data</h3>
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text"
                                class="form-control"
                                id="name"
                                placeholder="name"
                                name="name"
                                autofocus>                                
                        </div>
                        <div class="form-group">
                            <label for="slug">Slug</label>
                            <input type="text"
                                class="form-control"
                                id="slug"
                                placeholder="slug"
                                name="slug">
                        </div>
                        <div class="form-group">
                            <label for="description">Descripction</label>
                            <textarea class="form-control"
                                name="description"
                                id="description"
                                placeholder="Description"
                                rows="3">
                            </textarea>
                        </div>
                        <hr>
                        <h3>Full Access</h3>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio"
                                id="fullaccessyes"
                                name="full_access"
                                class="custom-control-input">
                            <label class="custom-control-label"
                                for="fullaccessyes"
                                value="yes">
                                Yes
                            </label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio"
                                id="fullaccessno"
                                name="full-access"
                                class="custom-control-input">
                            <label class="custom-control-label"
                                for="fullaccessno"
                                value="no"
                                checked>
                                No
                            </label>
                        </div>
                        <hr>
                        <h3>Permission List</h3>
                        @foreach($permissions as $permission)
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox"
                                    class="custom-control-input"
                                    id="permission_{{$permission->id}}"
                                    value="{{$permission->id}}"
                                    name="permission[]">
                                <label class="custom-control-label"
                                    for="permission_{{$permission->id}}">
                                        {{ $permission->id }}
                                        
                                        {{ $permission->name }}
                                        <em>( {{ $permission->description }} )</em>
                                </label>
                            </div>
                        @endforeach
                        <hr>
                        <input class="btn btn-primary"
                            type="submit"
                            value="Guardar">
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection