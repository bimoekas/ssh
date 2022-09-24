import { Fragment, useState } from "react";
import { Listbox, Transition } from "@headlessui/react";
import { CheckIcon, ChevronUpDownIcon } from "@heroicons/react/20/solid";
import { useForm } from "@inertiajs/inertia-react";
import classNames from "classnames";
import InputLabel from "@/Components/InputLabel";
import TextInput from "@/Components/TextInput";
import InputError from "@/Components/InputError";
import PrimaryButton from "@/Components/PrimaryButton";

export default function BarangForm(props) {
    // Cek apakah kita melakukan create atau edit
    const isEditing = props.isEdit; //Boolean(props.kategori_barang)

    // Untuk create inisialisasi data dilakukan manual, untuk
    // edit inisialisasi data dilakukan dengan mengambil
    // data kategori_barang dari controller
    const { data, setData, errors, processing, submit } = useForm(
        isEditing
            ? props.barang
            : {
                  kode: "",
                  nama: "",
                  spesifikasi: "",
                  merk: "",
                  keterangan: "",
                  satuan: "",
                  harga: "",
                  id_kategori_barang: undefined,
              }
    );
    function onSubmit(e) {
        e.preventDefault();

        // Untuk create kita menggunakan route store, sedangkan
        // Untuk edit kita menggunakan route update
        const submitUrl = isEditing
            ? route("barang.update", props.barang.id)
            : route("barang.store");

        // Untuk create kita lakukan post request, sedangkan
        // Untuk edit kita lakukan patch request
        submit(isEditing ? "patch" : "post", submitUrl);
    }

    return (
        <form onSubmit={onSubmit}>
            <div>
                <InputLabel forInput="kode" value="Kode Barang" />

                <TextInput
                    type="text"
                    name="kode"
                    value={data.kode}
                    className="mt-1 block w-full"
                    isFocused={true}
                    handleChange={(e) => setData("kode", e.target.value)}
                />

                <InputError message={errors.kode} className="mt-2" />
            </div>
            <div>
                <InputLabel forInput="nama" value="Nama Barang" />

                <TextInput
                    type="text"
                    name="nama"
                    value={data.nama}
                    className="mt-1 block w-full"
                    isFocused={true}
                    handleChange={(e) => setData("nama", e.target.value)}
                />

                <InputError message={errors.nama} className="mt-2" />
            </div>
            <div>
                <InputLabel forInput="spesifikasi" value="Spesifikasi Barang" />

                <TextInput
                    type="text"
                    name="spesifikasi"
                    value={data.spesifikasi}
                    className="mt-1 block w-full"
                    isFocused={true}
                    handleChange={(e) => setData("spesifikasi", e.target.value)}
                />

                <InputError message={errors.spesifikasi} className="mt-2" />
            </div>
            <div>
                <InputLabel forInput="merk" value="Merk Barang" />

                <TextInput
                    type="text"
                    name="merk"
                    value={data.merk}
                    className="mt-1 block w-full"
                    isFocused={true}
                    handleChange={(e) => setData("merk", e.target.value)}
                />

                <InputError message={errors.spesifimerkkasi} className="mt-2" />
            </div>
            <div>
                <InputLabel forInput="keterangan" value="Keterangan Barang" />

                <TextInput
                    type="text"
                    name="keterangan"
                    value={data.keterangan}
                    className="mt-1 block w-full"
                    isFocused={true}
                    handleChange={(e) => setData("keterangan", e.target.value)}
                />

                <InputError message={errors.keterangan} className="mt-2" />
            </div>
            <div>
                <InputLabel forInput="satuan" value="Satuan Barang" />

                <TextInput
                    type="text"
                    name="satuan"
                    value={data.satuan}
                    className="mt-1 block w-full"
                    isFocused={true}
                    handleChange={(e) => setData("satuan", e.target.value)}
                />

                <InputError message={errors.satuan} className="mt-2" />
            </div>
            <div>
                <InputLabel forInput="harga" value="Harga Barang" />

                <TextInput
                    type="text"
                    name="harga"
                    value={data.harga}
                    className="mt-1 block w-full"
                    isFocused={true}
                    handleChange={(e) => setData("harga", e.target.value)}
                />

                <InputError message={errors.harga} className="mt-2" />
            </div>
            <div>
                <Listbox
                    value={data.id_kategori_barang}
                    onChange={(value) => setData("id_kategori_barang", value)}
                >
                    {({ open }) => (
                        <>
                            <Listbox.Label className="block text-sm font-medium text-gray-700">
                                Nama Kategori
                            </Listbox.Label>
                            <div className="relative mt-1">
                                <Listbox.Button className="relative w-full cursor-default rounded-md border border-gray-300 bg-white py-2 pl-3 pr-10 text-left shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-1 focus:ring-indigo-500 sm:text-sm">
                                    <span className="block truncate">
                                        {props.barang.find(
                                            (item) =>
                                                item.id ===
                                                data.id_kategori_barang
                                        )?.nama || "Pilih Kategori"}
                                        {/* TODO: load nama Kategori */}
                                    </span>
                                    <span className="pointer-events-none absolute inset-y-0 right-0 flex items-center pr-2">
                                        <ChevronUpDownIcon
                                            className="h-5 w-5 text-gray-400"
                                            aria-hidden="true"
                                        />
                                    </span>
                                </Listbox.Button>

                                <Transition
                                    show={open}
                                    as={Fragment}
                                    leave="transition ease-in duration-100"
                                    leaveFrom="opacity-100"
                                    leaveTo="opacity-0"
                                >
                                    <Listbox.Options className="absolute z-10 mt-1 max-h-60 w-full overflow-auto rounded-md bg-white py-1 text-base shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none sm:text-sm">
                                        {props.barang.map((item) => (
                                            <Listbox.Option
                                                key={item.id}
                                                className={({ active }) =>
                                                    classNames(
                                                        active
                                                            ? "text-white bg-indigo-600"
                                                            : "text-gray-900",
                                                        "relative cursor-default select-none py-2 pl-3 pr-9"
                                                    )
                                                }
                                                value={item.id}
                                            >
                                                {({ selected, active }) => (
                                                    <>
                                                        <span
                                                            className={classNames(
                                                                selected
                                                                    ? "font-semibold"
                                                                    : "font-normal",
                                                                "block truncate"
                                                            )}
                                                        >
                                                            {item.nama}
                                                        </span>

                                                        {selected ? (
                                                            <span
                                                                className={classNames(
                                                                    active
                                                                        ? "text-white"
                                                                        : "text-indigo-600",
                                                                    "absolute inset-y-0 right-0 flex items-center pr-4"
                                                                )}
                                                            >
                                                                <CheckIcon
                                                                    className="h-5 w-5"
                                                                    aria-hidden="true"
                                                                />
                                                            </span>
                                                        ) : null}
                                                    </>
                                                )}
                                            </Listbox.Option>
                                        ))}
                                    </Listbox.Options>
                                </Transition>
                            </div>
                        </>
                    )}
                </Listbox>
            </div>
            <div className="flex items-center justify-end mt-4">
                <PrimaryButton processing={false}>Simpan</PrimaryButton>
            </div>
        </form>
    );
}
