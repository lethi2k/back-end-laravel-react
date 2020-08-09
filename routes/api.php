<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//router product
Route::group(['prefix' => 'product'], function () {
    Route::get('index', 'ProductController@index');
    Route::post('add', 'ProductController@store');
    Route::get('{id}', 'ProductController@show');
    Route::post('/update/{id}', 'ProductController@update');
    Route::delete('delete/{id}', 'ProductController@destroy');
    Route::delete('/delete', 'ProductController@deleteall');
});

//router categories product
Route::group(['prefix' => 'cate'], function () {
    Route::get('/index', 'CategoryController@index');
    Route::post('/add', 'CategoryController@store');
    Route::get('/{id}', 'CategoryController@show');
    Route::post('/update/{id}', 'CategoryController@update');
    Route::delete('/delete/{id}', 'CategoryController@destroy');
    Route::delete('/delete', 'CategoryController@deleteall');
});


//router categories blog
Route::group(['prefix' => 'cate-blog'], function () {
    Route::get('/index', 'CateBlogController@index');
    Route::post('/add', 'CateBlogController@store');
    Route::get('/{id}', 'CateBlogController@show');
    Route::post('/update/{id}', 'CateBlogController@update');
    Route::delete('/delete/{id}', 'CateBlogController@destroy');
    Route::delete('/delete', 'CateBlogController@deleteall');
});

//router blog
Route::group(['prefix' => 'blog'], function () {
    Route::get('/index', 'BlogController@index');
    Route::post('/add', 'BlogController@store');
    Route::get('/{id}', 'BlogController@show');
    Route::post('/update/{id}', 'BlogController@update');
    Route::delete('/delete/{id}', 'BlogController@destroy');
    Route::delete('/delete', 'BlogController@deleteall');
});
