import React from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Link, useForm } from "@inertiajs/inertia-react";
import InputError from "@/Components/InputError";
import InputLabel from "@/Components/InputLabel";
import TextInput from "@/Components/TextInput";
import PrimaryButton from "@/Components/PrimaryButton";

export default function CreateKategori(props) {
    const form = useForm(props.kategori);

    function submit(e) {
        e.preventDefault();
        form.patch(route("kategori.update", props.kategori.id));
    }

    return (
        <AuthenticatedLayout
            auth={props.auth}
            errors={props.errors}
            header={
                <h2 className="font-semibold text-xl text-gray-800 leading-tight">
                    Edit Kategori
                </h2>
            }
        >
            <div className="py-12">
                <div className="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div className="p-6 bg-white border-b border-gray-200">
                        <form onSubmit={submit}>
                            <div>
                                <InputLabel
                                    forInput="nama"
                                    value="Nama Kategori"
                                />

                                <TextInput
                                    type="text"
                                    name="nama"
                                    value={form.data.nama}
                                    className="mt-1 block w-full"
                                    autoComplete="username"
                                    isFocused={true}
                                    handleChange={(e) =>
                                        form.setData("nama", e.target.value)
                                    }
                                />

                                <InputError
                                    message={form.errors.nama}
                                    className="mt-2"
                                />
                            </div>
                            <div className="flex items-center justify-end mt-4">
                                <PrimaryButton processing={form.processing}>
                                    Simpan
                                </PrimaryButton>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </AuthenticatedLayout>
    );
}
