<?php

use App\Http\Controllers\KategoriController;
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

Route::middleware(['auth', 'verified'])->group(
    function () {
        Route::get('/dashboard', function () {
            return Inertia::render('Dashboard');
        })->name('dashboard');

        Route::get('/kategori', [KategoriController::class, 'index'])->name('kategori');

        Route::get('/kategori/create', [KategoriController::class, 'create'])->name('kategori.create');

        Route::post('/kategori', [KategoriController::class, 'store'])->name('kategori.store');

        Route::get('/kategori/{kategori}/edit', [KategoriController::class, 'edit'])->name('kategori.edit');
        Route::patch('/kategori/{kategori}', [KategoriController::class, 'update'])->name('kategori.update');
        Route::delete('/kategori/{kategori}', [KategoriController::class, 'destroy'])->name('kategori.destroy');

        Route::get('/kelompok-barang', function () {
            return Inertia::render('KelompokBarang');
        })->name('kelompok-barang');

        Route::get('/barang', function () {
            return Inertia::render('Barang');
        })->name('barang');
    }
);

Route::get('/', function () {
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});





require __DIR__ . '/auth.php';
