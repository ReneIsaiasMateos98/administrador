<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreatedRoleRequest extends FormRequest
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
            'name' => 'required|min:5|max:50|unique:roles,name',
            'slug' => 'required|min:5|max:50|unique:roles,slug',
            //'full-access' => 'required|in:on,yes,no',
        ];
    }
}
