<?php

namespace Database\Factories;

use App\Models\KategoriBarang;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Barang>
 */
class BarangFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'kode' => fake()->word(),
            'uraian' => fake()->name(),
            'spesifikasi' => fake()->sentence(),
            'merk' => fake()->word(),
            'keterangan' => fake()->paragraph(2, true),
            'satuan' => fake()->word(),
            'harga' => fake()->numerify(),
            'id_kategori_barang' => KategoriBarang::factory(),
        ];
    }
}
