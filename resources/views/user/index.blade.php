@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h2>List Of User</h2></div>

                <div class="card-body">
                    <!-- <a href="{{ route('user.create') }}" class="btn btn-primary float-right">Create</a>  -->
                    <br><br>
                    @include('custom.message')
                    <table class="table table-hover">
                    <thead class="thead-dark">
                        <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th colspan="3"></th>
                        </tr>
                    </thead>
                    <tbody>
                            @foreach ($users as $user)
                            <tr>
                                <th scope="row">{{ $user->id }}</th>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->email }}</td>
                                <td> <a class="btn btn-info" href="{{ route('user.show',$user->id) }}">show</a> </td>
                                <td> <a class="btn btn-success" href="{{ route('user.edit',$user->id) }}">edit</a> </td>
                                <td> <a class="btn btn-danger" href="{{ route('user.edit',$user->id) }}">Delete</a> </td>
                            </tr>
                            @endforeach
                    </tbody>
                    </table>
                    {{ $users->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection