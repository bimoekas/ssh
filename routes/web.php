<?php

use App\Http\Controllers\KategoriBarangController;
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

        Route::resource('kategori', KategoriController::class)->except(['show']);

        Route::get('/kategori-barang', [KategoriBarangController::class, 'index'])->name('kategori-barang');
        Route::get('/kategori-barang/create', [KategoriBarangController::class, 'create'])->name('kategori-barang.create');
        Route::post('/kategori-barang', [KategoriBarangController::class, 'store'])->name('kategori-barang.store');
        Route::get('/kategori-barang/{kategori_barang}/edit', [KategoriBarangController::class, 'edit'])->name('kategori-barang.edit');

        Route::patch('/kategori-barang/{kategori_barang}', [KategoriBarangController::class, 'update'])->name('kategori-barang.update');

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
