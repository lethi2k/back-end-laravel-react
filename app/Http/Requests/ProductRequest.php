<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name_product' => 'required|min:2|max:255',
            'img' => 'required',
            'price' => 'required|min:2|max:255',
            'sale_price' => 'required|min:2|max:255',
            'meta' => 'required|min:2|max:255',
            'content' => 'required|min:2',
            'id_dm' => 'required',
        ];
    }
}
