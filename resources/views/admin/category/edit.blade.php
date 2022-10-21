@extends('layouts.admin')

@section('content')
<div class="card">
    <div class="card header">
        <h4>Edit/Update Category</h4>
    </div>
    <div class="card-body">
        <form action=" {{ url('update-category/'.$category->id) }} " method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="">Name</label>
                    <input type="text" value="{{ $category->name }}" class="form-control" placeholder="Enter name" name="name">
                </div>

{{-- atsoina amnio $cate slug --}}
                <div class="col-md-6 mb-3">
                    <label for="">Slug</label>
                    <input type="text" value="{{ $category->slug }}" class="form-control" placeholder="Enter slug" name="slug">
                </div>

                <div class="col-md-6 mb-3">
                    <label for="">Description</label>
                    <textarea name="description" class="form-control" placeholder="Enter description" >{{ $category->description }}</textarea>
                </div>

                <div class="col-md-6 mb-3">
                    <label for="">Status</label>
                    <input type="checkbox" {{ $category->status == "1" ? 'checked':'' }} name="status">
                </div>

                <div class="col-md-6 mb-3">
                    <label for="">Popular</label>
                    <input type="checkbox" {{ $category->popular == "1" ? 'checked':'' }} name="popular">
                </div>

                <div class="col-md-6 mb-3">
                    <label for="">Meta title</label>
                    <input type="text" value="{{ $category->meta_title }}"  class="form-control" placeholder="Enter meta_title" name="meta_title">
                </div>

{{-- textarea tss value fa ao am catego --}}
                <div class="col-md-6 mb-3">
                    <label for="">Meta Keywords</label>
                    <textarea name="meta_keywords" rows="3" placeholder="Enter meta_keywords" class="form-control">{{ $category->meta_keywords }}</textarea>
                </div>

                <div class="col-md-6 mb-3">
                    <label for="">Meta description</label>
                    <textarea name="meta_descrip" rows="3" placeholder="Enter meta_descrip" class="form-control">{{ $category->meta_descrip }}</textarea>
                </div>
{{-- ato miantso anle image edit --}}
                @if($category->image)
                    <img src=" {{ asset('assets/uploads/category/'.$category->image) }}" alt="Category image">
                @endif

                <div class="col-mb-12">
                    <input type="file" name="image">
                </div>

                <div class="col-mb-12">
                    <button type="submit" class="btn btn-primary active btn-lg">Update</button>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection
