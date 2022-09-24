<?php

use App\Http\Controllers\BarangController;
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

        Route::resource('kategori-barang', KategoriBarangController::class)->except(['show']);

        Route::resource('barang', BarangController::class)->except(['show']);

        // Route::get('/barang', [BarangController::class, 'index'])->name('barang');
        // Route::get('/barang/create', [BarangController::class, 'create'])->name('barang.create');
        // Route::get('/barang/{barang}/edit', [BarangController::class, 'edit'])->name('barang.edit');
        // Route::post('/barang', [BarangController::class, 'store'])->name('barang.store');
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
