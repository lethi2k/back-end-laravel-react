<?php

namespace App\Http\Controllers;

use App\Http\Requests\CategoryRequest;
use App\Category;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Category = Category::all();
        return response()->json($Category, 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CategoryRequest $request)
    {
        $model = new Category();
        $model->name = $request->name;
        $model->save();
        if ($model->save()) {
            return ['success' => "thêm thành công"];
        } else {
            return ['success' => 'errors no data'];
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = Category::findOrFail($id);
        return response()->json($data, 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(CategoryRequest $request, $id)
    {
        $model = Category::find($id);
        $model->name = $request->name;
        $model->save();
        if ($model->save()) {
            return ['success' => $model];
        } else {
            return ['success' => 'errors no data'];
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $delete = Category::destroy($id);
        if ($delete) {
            return ['success' => 'delete successful'];
        } else {
            return ['success' => 'error delete'];
        }
    }

    public function deleteall()
    {
        $delete = Category::truncate();
        if ($delete) {
            return ['success' => 'delete successful'];
        } else {
            return ['success' => 'error delete'];
        }
    }
}
