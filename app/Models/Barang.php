<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{
    use HasFactory;

    protected $table = 'barang';

    // protected $appends = ['label'];

    protected $guarded = [];

    public function kategori_barang()
    {
        return $this->hasOne(KategoriBarang::class, 'id_kategori_barang');
    }
}
