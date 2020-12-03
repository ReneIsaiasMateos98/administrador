@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h2>Create Product</h2></div>

                <div class="card-body">
                    @include('custom.message')
                    <form action="{{ route('product.store') }}" method="POST">
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
                            <label for="description">Descripction</label>
                            <textarea class="form-control"
                                name="description"
                                id="description"
                                placeholder="Description"
                                rows="3">
                            </textarea>
                        </div>
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