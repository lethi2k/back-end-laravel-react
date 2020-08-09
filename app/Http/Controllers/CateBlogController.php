<?php

namespace App\Http\Controllers;

use App\Http\Requests\CateBlogRequest;
use App\CateBlog;

class CateBlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $CateBlog = CateBlog::all();
        return response()->json($CateBlog, 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CateBlogRequest $request)
    {
        $model = new CateBlog();
        $model->cate_name = $request->cate_name;
        $model->save();
        if ($model->save()) {
            return ['success' => "add data success"];
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
        $data = CateBlog::findOrFail($id);
        return response()->json($data, 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(CateBlogRequest $request, $id)
    {
        $model = CateBlog::find($id);
        $model->cate_name = $request->cate_name;
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
        $delete = CateBlog::destroy($id);
        if ($delete) {
            return ['success' => 'delete successful'];
        } else {
            return ['success' => 'error delete'];
        }
    }

    public function deleteall()
    {
        $delete = CateBlog::truncate();;
        if ($delete) {
            return ['success' => 'delete successful'];
        } else {
            return ['success' => 'error delete'];
        }
    }
}
