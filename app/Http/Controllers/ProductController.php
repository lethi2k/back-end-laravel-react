<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProductRequest;
use App\Product;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $product = Product::join('categories', 'product.id_dm', '=', 'categories.id')->select('categories.name', 'product.*')->get();
        return response()->json($product, 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {
        $model = new Product();
        $model->name_product = $request->name_product;
        $model->img = $request->img;
        $model->price = $request->price;
        $model->sale_price = $request->sale_price;
        $model->meta = $request->meta;
        $model->content = $request->content;
        $model->id_dm = $request->id_dm;
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
        $data = Product::findOrFail($id);
        return response()->json($data, 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProductRequest $request, $id)
    {
        $model = Product::find($id);
        $model->name_product = $request->name_product;
        $model->img = $request->img;
        $model->price = $request->price;
        $model->sale_price = $request->sale_price;
        $model->meta = $request->meta;
        $model->content = $request->content;
        $model->id_dm = $request->id_dm;

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
        $deleteProduct = Product::destroy($id);
        if ($deleteProduct) {
            return ['success' => "delete data success"];
        } else {
            return ['success' => 'errors dalete data'];
        }
    }

    public function deleteall()
    {
        $delete = Product::truncate();
        if ($delete) {
            return ['success' => 'delete successful'];
        } else {
            return ['success' => 'error delete'];
        }
    }
}
