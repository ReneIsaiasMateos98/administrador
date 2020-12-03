@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h2>List Of Products</h2></div>

                <div class="card-body">
                    <a href="{{ route('product.create') }}" class="btn btn-primary float-right">Create</a>
                    <br><br>
                    @include('custom.message')
                    <table class="table table-hover">
                    <thead class="thead-dark">
                        <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Description</th>
                        <th colspan="3"></th>
                        </tr>
                    </thead>
                    <tbody>
                            @foreach ($products as $product)
                            <tr>
                                <th scope="row">{{ $product->id }}</th>
                                <td>{{ $product->name }}</td>
                                <td>{{ $product->description }}</td>
                                <td> <a class="btn btn-info" href="{{ route('product.show',$product->id) }}">show</a> </td>
                                <td> <a class="btn btn-success" href="{{ route('product.edit',$product->id) }}">edit</a> </td>
                                <td> <a class="btn btn-danger" href="{{ route('product.edit',$product->id) }}">Delete</a> </td>
                            </tr>
                            @endforeach
                    </tbody>
                    </table>
                    {{ $products->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection