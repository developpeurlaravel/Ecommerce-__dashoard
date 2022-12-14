<?php

namespace App\Http\Controllers\Admin;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;

class CategoryController extends Controller
{
   public function index() {
//miantso anle category reetra
    $category = Category::all();
    return view("admin.category.index", compact('category'));

    }

    public function add()
    {
        return view('admin.category.add');
    }

//function tsy maitsy atao anaty formulaire
    public function insert(Request $request)
    {
//insertion image sizy reetra
        $category = new Category();
        if ($request->hasFile('image')) {

            $file = $request->file('image');
            $ext = $file->getClientOriginalExtension();
            $filename = time() . '.' . $ext;
            $file->move('assets/uploads/category/',$filename);
            $category->image = $filename;
        }

        $category->name = $request->input('name');
        $category->slug = $request->input('slug');
        $category->description = $request->input('description');
        $category->status = $request->input('status') == TRUE ? '1' : '0';
        $category->popular = $request->input('popular') == TRUE ? '1' : '0';
        $category->meta_title = $request->input('meta_title');
        $category->meta_keywords = $request->input('meta_keywords');
        $category->meta_descrip = $request->input('meta_descrip');
        $category->save();
        return redirect('/dashboard')->with('status', "Category Added Successfully");
    }
    public function edit($id)
    {
        $category = Category::find($id);
        return view('admin.category.edit', compact('category'));
    }

//update anaty formulaire ilaina le request
    public function update(Request $request, $id)
    {
        $category = Category::find($id);
        if($request->hasFile('image'))
        {
            $path = 'assets/uploads/category/' .$category->image;
            if(File::exists($path))
            {
                File::delete($path);
            }
            $file = $request->file('image');
            $ext = $file->getClientOriginalExtension();
            $filename = time() . '.' . $ext;
            $file->move('assets/uploads/category/' ,$filename);
            $category->image = $filename;
        }
        $category->name = $request->input('name');
        $category->slug = $request->input('slug');
        $category->description = $request->input('description');
        $category->status = $request->input('status') == TRUE ? '1' : '0';
        $category->popular = $request->input('popular') == TRUE ? '1' : '0';
        $category->meta_title = $request->input('meta_title');
        $category->meta_keywords = $request->input('meta_keywords');
        $category->meta_descrip = $request->input('meta_descrip');
        $category->update();
        return redirect('dashboard')->with('status', "Category Updated Successfully");
    }
//delete crud
    public function destroy($id)
     {
         $category = Category::find($id);
         if($category->image)
         {
             $path = 'assets/uploads/category/'.$category->image;
             if(File::exists($path))
             {
                 File::delete($path);
             }
         }
         $category->delete();
         return redirect('categories')->with('status',"Category Deleted Successfully");
     }
}
