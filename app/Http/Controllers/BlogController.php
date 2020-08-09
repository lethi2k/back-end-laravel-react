<?php

namespace App\Http\Controllers;

use App\Http\Requests\BlogRequest;
use App\Blog;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Blog = Blog::join('cate_blog', 'blog.cate_id', '=', 'cate_blog.id')->select('cate_blog.cate_name', 'blog.*')->get();
        return response()->json($Blog, 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(BlogRequest $request)
    {
        $model = new Blog();
        $model->name = $request->name;
        $model->img = $request->img;
        $model->meta = $request->meta;
        $model->content = $request->content;
        $model->cate_id = $request->cate_id;
        $model->save();
        return response()->json($model, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = Blog::findOrFail($id);
        return response()->json($data, 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(BlogRequest $request, $id)
    {
        $model = Blog::find($id);
        $model->name = $request->name;
        $model->img = $request->img;
        $model->meta = $request->meta;
        $model->content = $request->content;
        $model->cate_id = $request->cate_id;

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
        $deleteProduct = Blog::destroy($id);
        if ($deleteProduct) {
            return ['success' => "delete data success"];
        } else {
            return ['success' => 'errors dalete data'];
        }
    }

    public function deleteall()
    {
        $delete = Blog::truncate();;
        if ($delete) {
            return ['success' => 'delete successful'];
        } else {
            return ['success' => 'error delete'];
        }
    }
}
