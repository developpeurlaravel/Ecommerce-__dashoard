@extends('layouts.front')

@section('title', $products->name)


@section('content')
    <div class="py-3 mb-4 shadow-sm bg-warning border-top">
        <div class="container">
            <h6 class="mb-0">
            <a href="{{ url('category') }}">
                Colletions
            </a> /
            <a href="{{ url('category/'.$products->category->slug) }}">
                {{ $products->category->name}}
            </a> /
            <a href="{{ url('category/'.$products->category->slug.'/'.$products->slug) }}">
                {{ $products->name}}
             </a>
            </h6>
        </div>
    </div>

    <div class="container">
        <div class="card shadow product_data">
            <div class="card body">
                <div class="row">
                    <div class="col-md-4 border-right">
                        <img src="{{ asset('assets/uploads/products/' . $products->image) }}" class="w-100" alt="">
                    </div>
                    <div class="col-md-8">
                        <h2 class="mb-0">
                            {{ $products->name }}
                            @if ($products->trending == '1')
                                <label style="font-size:16px;" class="float-end badge bg-danger trending_tag">
                                    Trending</label>
                            @endif

                        </h2>
                        <hr>
                        <label class="me-3">Original Price : <s>Rs {{ $products->original_price }}</s></label>
                        <label class="fw-bold">Selling Price : Rs {{ $products->selling_price }}</label>
                        <p class="mt-3">
                            {!! $products->small_description !!}
                        </p>
                        <hr>
                        @if ($products->qty > 0)
                            <label class="badge bg-success">In stock</label>
                        @else
                            <label class="badge bg-danger">Out of stock</label>
                        @endif
                        <div class="row mt-2">
                            <div class="col-md-2">
                            <input type="hidden" value="{{ $products->id }}" class="prod_id">
                                <label for="Quantity">Quantity</label>
                                <div class="input-group text-center mb-3 ">
                                    <button class="input-group-text decrement-btn">-</button>
                                    <input type="text" name="quantity " value="1" class="form-control qty-input" />
                                    <button class="input-group-text increment-btn">+</button>

                                </div>
                            </div>
                            <div class="col-md-10">
                                <br />

                                <button type="button" class="btn btn-primary me-3 addToCartBtn float-start">Add to cart <svg
                                        xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                        class="bi bi-cart" viewBox="0 0 16 16">
                                        <path
                                            d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                                    </svg></button>
                                    <button type="button" class="btn btn-success me-3 float-start">Add to Whislist <svg
                                        xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                        class="bi bi-heart" viewBox="0 0 16 16">
                                        <path
                                            d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                    </svg></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card body">
                    <div class="row">
                        <div class="col-md-5 border-right">

                            <footer>
                                <h6 style="font-size:2rem; font-family:Verdana, Geneva, Tahoma, sans-serif;">Description
                                </h6>
                                <p>
                                    {{ $products->description }}
                                </p>
                            </footer>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>


@endsection


