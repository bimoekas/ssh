<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Kategori;
use App\Models\KategoriBarang;
use App\Models\Barang;
use Illuminate\Database\Seeder;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // Create Admin
        User::factory()->create([
            'name' => 'Admin',
            'email' => 'admin@example.com',
            'is_admin' => true
        ]);

        // Create user
        User::factory()->create([
            'name' => 'User',
            'email' => 'user@example.com',
        ]);

        //Generate 1 Kategori
        $kategori = Kategori::factory()->create();


        //Generate 5 Kategori Barang Dengan Kategori berID 1
        // KategoriBarang::factory(5)->create([
        //     'id_kategori' => $kategori->id
        // ]);

        //Generate 5 Kategori Barang, dalam proses generate kategori barang tersebut. 5 kategori juga akan otomatis tergenerate
        // KategoriBarang::factory(5)->create();

        // $kategori_barang = KategoriBarang::factory()->create();

        // Barang::factory(5)->create([
        //     'id_kategori_barang' => $kategori_barang->id
        // ]);

        // Barang::factory(5)->create();
    }
}
