<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CateBlog extends Model
{
    protected $table = "cate_blog";
    protected $fillable = ['name'];
    public $timestamps = false;
}
