<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SaveKategoriRequest extends FormRequest
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
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'nama' => ['required', 'min:3', 'max:255']
        ];
    }

    public function messages()
    {
        return [
            'nama.required' => 'Harap mengisi nama kategori',
            'nama.min' => 'Nama Kategori Minimal :min Karakter',
            'nama.max' => 'Nama Kategori Maksimal :max Karakter',
        ];
    }
}
