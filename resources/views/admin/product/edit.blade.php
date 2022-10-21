@extends('layouts.admin')

@section('content')
    <div class="card">
        <div class="card header">
            <h4>Add Product</h4>
        </div>
        <div class="card-body">
{{-- reefa mlike anle button update de astoina ato am url ation ilay prod id --}}
            <form action=" {{ url('update-product/'.$products->id) }} " method="POST" enctype="multipart/form-data">
@method('PUT')
                @csrf
                <div class="row">
                    <div class="col-md-12 mb-3">
                        <label for="">Category</label>
                        {{-- ovaina cate id name anle add product categories de lasa cate_id --}}
                        <select class="form-select">
                            <option value="">{{ $products->category->name }}</option>

                        </select>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Name</label>
                        <input type="text" class="form-control" value="{{ $products->name }}" name="name">
                    </div>

                    <div class="col-md-6 mb-3">
                        <label for="">Slug</label>
                        <input type="text" class="form-control" value="{{ $products->slug }}" name="slug">
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="">Description</label>
                        <textarea name="description" rows="3" class="form-control" value="{{ $products->description }}" ></textarea>
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="">small_description</label>
                        <textarea name="small_description" class="form-control" value="{{ $products->small_description }}"></textarea>
                    </div>

                    <div class="col-md-6 mb-3">
                        <label for="">Original price</label>
                        <input type="number" class="form-control" value="{{ $products->original_price }}" name="original_price">
                    </div>

                    <div class="col-md-6 mb-3">
                        <label for="">Selling price</label>
                        <input type="number" class="form-control" value="{{ $products->selling_price }}" name="selling_price">
                    </div>

                    <div class="col-md-6 mb-3">
                        <label for="">Quantity</label>
                        <input type="number" class="form-control" value="{{ $products->qty }}" name="qty">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="">Tax </label>
                        <input type="number" class="form-control" value="{{ $products->tax }}" name="tax">
                    </div>
{{-- reefa hekbox de asina {{ $produts->status== "1" ? 'checked' : '' }} --}}
                    <div class="col-md-6 mb-3">
                        <label for="">Status</label>
                        <input type="checkbox" value="{{ $products->status == "1" ? 'checked' : '' }}" name="status">
                    </div>

                    <div class="col-md-6 mb-3">
                        <label for="">Trending</label>
                        <input type="checkbox" value="{{ $products->trending == "1" ? 'checked' : ''}}" name="trending">
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="">Meta title</label>
                        <textarea name="meta_title" rows="3" class="form-control"> {{ $products->meta_title }}</textarea>
                    </div>
{{-- reefa text area de atao ao anaty balise apvoany n atsoina --}}
                    <div class="col-md-12 mb-3">
                        <label for="">Meta Keywords</label>
                        <textarea name="meta_keywords" rows="3" class="form-control" > {{ $products->meta_keywords }}</textarea>
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="">Meta description</label>
                        <textarea name="meta_description" rows="3" class="form-control" >{{ $products->meta_description }}</textarea>
                    </div>
                    {{-- reefa image mapiasa condition ifelse --}}
                     @if ($products->image)
                        <img src="{{ asset('assets/uploads/products/'.$products->image) }}" alt="">
                    @endif

                    <div class="col-md-12">
                        <input type="file" name="image" class="form-control">
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary active btn-lg">Update</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
