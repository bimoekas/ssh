<?php

namespace App\Http\Controllers;

use App\Models\KategoriBarang;
use App\Models\Barang;
use Illuminate\Http\Request;
use Inertia\Inertia;


class BarangController extends Controller
{
    public function __construct()
    {
        // $this->middleware('is_admin')->only('destroy');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Inertia::render(
            'Barang/Index',
            [
                'barang' => Barang::with('kategori_barang')->paginate(3),
            ]
        );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        return Inertia::render('Barang/Create', [
            'barang' => KategoriBarang::all(),
            'is_edit' => false,
            'can_create' => request()->user()->can('create', Barang::class),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'kode' => ['required', 'min:3', 'max:255', 'unique:barang,kode'],
            'nama' => ['required', 'min:3', 'max:255'],
            'spesifikasi' => ['min:3', 'max:255'],
            'merk' => ['required', 'min:3', 'max:255'],
            'keterangan' => ['min:3', 'max:255'],
            'satuan' => ['min:3', 'max:255'],
            'harga' => ['required', 'min:3', 'max:255'],
            'id_kategori_barang' => ['required', 'exists:kategori_barang,id']
        ]);

        Barang::create($validated);

        return redirect(route('barang.index'))->with('flash', [
            'type' => 'success',
            'title' => 'Barang Tersimpan',
            'body' => 'Barang Berhasil Disimpan'
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Barang  $barang
     * @return \Illuminate\Http\Response
     */
    public function show(Barang $barang)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Barang  $barang
     * @return \Illuminate\Http\Response
     */
    public function edit(Barang $barang)
    {
        return Inertia::render('Barang/Edit', [
            'kategori' => KategoriBarang::all(),
            'barang' => $barang
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Barang  $barang
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Barang $barang)
    {
        $validated = $request->validate([
            'kode' => ['required', 'min:3', 'max:255',],
            'nama' => ['required', 'min:3', 'max:255'],
            'spesifikasi' => ['min:3', 'max:255'],
            'merk' => ['required', 'min:3', 'max:255'],
            'keterangan' => ['min:3', 'max:255'],
            'satuan' => ['min:3', 'max:255'],
            'harga' => ['required', 'min:3', 'max:255'],
            'id_kategori_barang' => ['required', 'exists:kategori_barang,id']
        ]);

        $barang->update($validated);

        return redirect(route('barang.index'))->with('flash', [
            'type' => 'success',
            'title' => 'Barang Tersimpan',
            'body' => 'Barang Berhasil Diupdate',
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Barang  $barang
     * @return \Illuminate\Http\Response
     */
    public function destroy(Barang $barang)
    {
        $this->authorize('delete', $barang);

        $barang->delete();

        return redirect()->back()->with('flash', [
            'type' => 'success',
            'title' => 'Barang Telah Dihapus',
            'body' => 'Barang Berhasil Dihapus',
        ]);
    }
}
