import React from "react";
import AuthenticatedLayout from "@/Layouts/AuthenticatedLayout";
import { Link } from "@inertiajs/inertia-react";
import { ChevronLeftIcon, ChevronRightIcon } from "@heroicons/react/20/solid";
import classNames from "classnames";

export default function Kategori({ auth, errors, kategori }) {
    return (
        <AuthenticatedLayout auth={auth} errors={errors}>
            <div className="py-4">
                <div className="sm:flex sm:items-center">
                    <div className="sm:flex-auto">
                        <h1 className="text-xl font-semibold text-gray-900">
                            Kategori
                        </h1>
                        <p className="mt-2 text-sm text-gray-700">
                            List kategori yang telah diinput
                        </p>
                    </div>
                    <div className="mt-4 sm:mt-0 sm:ml-16 sm:flex-none">
                        <Link
                            href={route("kategori.create")}
                            as="button"
                            className="inline-flex items-center justify-center rounded-md border border-transparent bg-indigo-600 px-4 py-2 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 sm:w-auto"
                        >
                            Tambah Kategori
                        </Link>
                    </div>
                </div>
                <div className="mt-8 flex flex-col">
                    <div className="-my-2 -mx-4 overflow-x-auto sm:-mx-6 lg:-mx-8">
                        <div className="inline-block min-w-full py-2 align-middle md:px-6 lg:px-8">
                            <div className="overflow-hidden shadow ring-1 ring-black ring-opacity-5 md:rounded-lg">
                                <table className="min-w-full divide-y divide-gray-300">
                                    <thead className="bg-gray-50">
                                        <tr>
                                            <th
                                                scope="col"
                                                className="py-3.5 pl-4 pr-3 text-left text-sm font-semibold text-gray-900 sm:pl-6"
                                            >
                                                Nama Kategori
                                            </th>
                                            <th
                                                scope="col"
                                                className="relative py-3.5 pl-3 pr-4 sm:pr-6"
                                            >
                                                <span className="sr-only">
                                                    Edit
                                                </span>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody className="bg-white">
                                        {kategori.data.map((item, idx) => (
                                            <tr
                                                key={idx}
                                                className={
                                                    idx % 2 === 0
                                                        ? undefined
                                                        : "bg-gray-50"
                                                }
                                            >
                                                <td className="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-gray-900 sm:pl-6">
                                                    {item.nama}
                                                </td>
                                                <td className="relative whitespace-nowrap py-4 pl-3 pr-4 text-right text-sm font-medium space-x-2 sm:pr-6">
                                                    <Link
                                                        href={route(
                                                            "kategori.edit",
                                                            item.id
                                                        )}
                                                        className="text-indigo-600 hover:text-indigo-900"
                                                    >
                                                        Edit
                                                        <span className="sr-only">
                                                            , {item.nama}
                                                        </span>
                                                    </Link>
                                                    <Link
                                                        href={route(
                                                            "kategori.destroy",
                                                            item.id
                                                        )}
                                                        method="delete"
                                                        className="text-red-600 hover:text-red-900"
                                                    >
                                                        Hapus
                                                        <span className="sr-only">
                                                            , {item.nama}
                                                        </span>
                                                    </Link>
                                                </td>
                                            </tr>
                                        ))}
                                    </tbody>
                                </table>
                                <div className="flex items-center justify-between border-t border-gray-200 bg-white px-4 py-3 sm:px-6">
                                    <div className="flex flex-1 justify-between sm:hidden">
                                        <a
                                            href="#"
                                            className="relative inline-flex items-center rounded-md border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-700 hover:bg-gray-50"
                                        >
                                            Previous
                                        </a>
                                        <a
                                            href="#"
                                            className="relative ml-3 inline-flex items-center rounded-md border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-700 hover:bg-gray-50"
                                        >
                                            Next
                                        </a>
                                    </div>
                                    <div className="hidden sm:flex sm:flex-1 sm:items-center sm:justify-between">
                                        <div>
                                            <p className="text-sm text-gray-700">
                                                Menampilkan{" "}
                                                <span className="font-medium">
                                                    {kategori.from}
                                                </span>{" "}
                                                ke{" "}
                                                <span className="font-medium">
                                                    dari {kategori.to}
                                                </span>{" "}
                                                {kategori.total}
                                                <span className="font-medium"></span>{" "}
                                                hasil
                                            </p>
                                        </div>
                                        <div>
                                            <nav
                                                className="isolate inline-flex -space-x-px rounded-md shadow-sm"
                                                aria-label="Pagination"
                                            >
                                                {kategori.links.map(
                                                    (page, idx) => {
                                                        const isFirst =
                                                            idx === 0;
                                                        const isLast =
                                                            idx ===
                                                            kategori.links
                                                                .length -
                                                                1;
                                                        function renderLabel() {
                                                            if (isFirst) {
                                                                return (
                                                                    <>
                                                                        <span className="sr-only">
                                                                            Previous
                                                                        </span>
                                                                        <ChevronLeftIcon
                                                                            className="n-5 w-5"
                                                                            aria-hidden="true"
                                                                        />
                                                                    </>
                                                                );
                                                            }
                                                            if (isLast) {
                                                                return (
                                                                    <>
                                                                        <span className="sr-only">
                                                                            Next
                                                                        </span>
                                                                        <ChevronRightIcon
                                                                            className="n-5 w-5"
                                                                            aria-hidden="true"
                                                                        />
                                                                    </>
                                                                );
                                                            }
                                                            return page.label;
                                                        }
                                                        return (
                                                            <Link
                                                                key={page.label}
                                                                href={page.url}
                                                                as={
                                                                    page.url
                                                                        ? "a"
                                                                        : "span"
                                                                }
                                                                aria-current={
                                                                    page.active
                                                                        ? "page"
                                                                        : "false"
                                                                }
                                                                className={classNames(
                                                                    page.active
                                                                        ? "z-10 bg-indigo-50 border-indigo-500 text-indigo-600"
                                                                        : "bg-white border-gray-300 text-gray-500 hover:bg-gray-50",
                                                                    isFirst &&
                                                                        "rounded-l-md",
                                                                    isLast &&
                                                                        "rounded-r-md",
                                                                    "relative inline-flex items-center border px-4 py-2 text-sm font-medium focus:z-20"
                                                                )}
                                                            >
                                                                {renderLabel()}
                                                            </Link>
                                                        );
                                                    }
                                                )}
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </AuthenticatedLayout>
    );
}
