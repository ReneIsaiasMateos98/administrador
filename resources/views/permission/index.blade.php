@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h2>List Of Permission</h2></div>

                <div class="card-body">
                    <a href="{{ route('role.create') }}" class="btn btn-primary float-right">Create</a>
                    <br><br>
                    @include('custom.message')
                    <table class="table table-hover">
                    <thead class="thead-dark">
                        <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Slug</th>
                        <th scope="col">Description</th>
                        <th colspan="3"></th>
                        </tr>
                    </thead>
                    <tbody>
                            @foreach ($permissions as $permission)
                            <tr>
                                <th scope="row">{{ $permission->id }}</th>
                                <td>{{ $permission->name }}</td>
                                <td>{{ $permission->slug }}</td>
                                <td> <a class="btn btn-info" href="{{ route('permission.show',$permission->id) }}">show</a> </td>
                                <td> <a class="btn btn-success" href="{{ route('permission.edit',$permission->id) }}">edit</a> </td>
                                <td> <a class="btn btn-danger" href="{{ route('permission.edit',$permission->id) }}">Delete</a> </td>
                            </tr>
                            @endforeach
                    </tbody>
                    </table>
                    {{ $permissions->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection