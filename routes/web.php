<?php

use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});

Route::get('/dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::get('/kategori', function () {
    return Inertia::render('Kategori/Index', [
        'kategori' => \App\Models\Kategori::all(),
    ]);
})->middleware(['auth', 'verified'])->name('kategori');

Route::get('/kelompok-barang', function () {
    return Inertia::render('KelompokBarang');
})->middleware(['auth', 'verified'])->name('kelompok-barang');

Route::get('/barang', function () {
    return Inertia::render('Barang');
})->middleware(['auth', 'verified'])->name('barang');

require __DIR__ . '/auth.php';
