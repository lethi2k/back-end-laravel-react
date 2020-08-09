<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = "product";
    protected $fillable = ['name_product', 'img', 'price', 'sale_price', 'meta', 'content', 'id_dm'];
    public $timestamps = false;
}
