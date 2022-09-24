<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('barang', function (Blueprint $table) {
            $table->id();
            $table->string('kode')->unique();
            $table->string('uraian')->nullable();
            $table->string('nama');
            $table->text('spesifikasi');
            $table->string('merk');
            $table->text('keterangan');
            $table->string('satuan');
            $table->string('harga');
            $table->foreignId('id_kategori_barang')->constrained('kategori_barang');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('barang');
    }
};
