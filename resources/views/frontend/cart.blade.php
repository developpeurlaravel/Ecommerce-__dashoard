@extends('layouts.front')

@section('title')
    My Cart
@endsection

@section('content')
    <div class="py-3 mb-4 shadow-sm bg-warning border-top">
        <div class="container">
            <h6 class="mb-0">
                <a href="{{ url('/') }}">
                    Home
                </a> /
                <a href="{{ url('cart') }}">
                    Cart
                </a>

            </h6>
        </div>
    </div>

    <div class="container my-5">
        <div class="card shadow product_data">
            <div class="card-body">
            @foreach ($cartitems as $item)

                <div class="row">
                    <div class="col-md-2">
                        <img src="{{ asset('assets/uploads/products/'.$item->products->image) }}" height="70px" width="70px" alt="Image here">
                    </div>
{{-- miextends ary am Product Cart model ao am foreigns keys --}}
                    <div class="col-md-5">
                        <h2>{{ $item->products->name }}</h2>
                    </div>
                    <div class="col-md-3">
                        <input type="hidden" class="prod_id" value="{{ $item->prod_id }}">
                        <label for="Quantity">Quantity</label>
                        <div class="input-group text-center mb-3" style="width:100px;">
                            <button class="input-group-text decrement-btn">-</button>
                            <input type="text" name="quantity" class="form-control qty-input text-center" value=" {{ $item->prod_qty }} ">
                            <button class="input-group-text increment-btn">+</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <button class="btn btn-danger delete-cart-item"><i class="fa fa-trash"></i> Remove</button>
                    </div>
                </div>
                @endforeach

            </div>
        </div>
    </div>
@endsection
