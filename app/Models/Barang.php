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
<<<<<<< HEAD
        return $this->belongsTo(KategoriBarang::class, 'id_kategori_barang');
=======
        return $this->hasOne(KategoriBarang::class, 'id_kategori');
>>>>>>> 4f0f58be1188583bd150b566f0d966554e26c223
    }
}
