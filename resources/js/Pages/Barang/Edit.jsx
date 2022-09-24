import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import BarangForm from "./_Form";

export default function BarangCreate(props) {
    return (
        <AuthenticatedLayout
            auth={props.auth}
            errors={props.errors}
            header={
                <h2 className="font-semibold text-xl text-gray-800 leading-tight">
                    Edit Barang
                </h2>
            }
        >
            <div className="py-12">
                <div className="bg-white shadow-sm sm:rounded-lg">
                    <div className="p-6 bg-white border-b border-gray-200">
                        <BarangForm
                            barang={props.barang}
                            edit_barang={props.edit_barang}
                        />
                    </div>
                </div>
            </div>
        </AuthenticatedLayout>
    );
}
