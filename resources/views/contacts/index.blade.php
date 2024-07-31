@extends('layouts.app')

@section('content')
    <!-- Start block -->
    <section class="bg-gray-50 dark:bg-gray-900">
        <div class="mx-auto max-w-screen-xl">
            <!-- Start coding here -->
            <div class="bg-white dark:bg-gray-800 relative shadow-md sm:rounded-lg overflow-hidden">

                @if (session('message'))
                    <div class="p-5">
                        <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative mb-4"
                            role="alert">
                            <strong class="font-bold">Success!</strong>
                            <span class="block sm:inline">{{ session('message') }}</span>
                        </div>
                    </div>
                @endif

                <div class="flex flex-col md:flex-row items-center justify-between space-y-3 md:space-y-0 md:space-x-4 p-4">
                    <div class="w-full md:w-1/2">
                        <form action="{{ route('contacts.index') }}" method="GET" class="flex items-center"
                            enctype="multipart/form-data">
                            @csrf
                            <label for="simple-search" class="sr-only">Search</label>
                            <div class="relative w-full">
                                <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                                    <svg aria-hidden="true" class="w-5 h-5 text-gray-500 dark:text-gray-400"
                                        fill="currentColor" viewbox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd"
                                            d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"
                                            clip-rule="evenodd" />
                                    </svg>
                                </div>
                                <input type="text" name="search" id="simple-search"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full pl-10 p-2 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                    placeholder="Search" value="{{ request('search') }}">
                            </div>
                        </form>
                    </div>
                    <div
                        class="w-full md:w-auto flex flex-col md:flex-row space-y-2 md:space-y-0 items-stretch md:items-center justify-end md:space-x-3 flex-shrink-0">
                        <a href="{{ route('contacts.create') }}"
                            class="flex items-center justify-center text-white bg-primary-700 hover:bg-primary-800 focus:ring-4 focus:ring-primary-300 font-medium rounded-lg text-sm px-4 py-2 dark:bg-primary-600 dark:hover:bg-primary-700 focus:outline-none dark:focus:ring-primary-800">
                            <svg class="h-3.5 w-3.5 mr-2" fill="currentColor" viewbox="0 0 20 20"
                                xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                                <path clip-rule="evenodd" fill-rule="evenodd"
                                    d="M10 3a1 1 0 011 1v5h5a1 1 0 110 2h-5v5a1 1 0 11-2 0v-5H4a1 1 0 110-2h5V4a1 1 0 011-1z" />
                            </svg>
                            Add Contact
                        </a>
                    </div>
                </div>
                <div class="overflow-x-auto">
                    <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                        <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                            <tr>
                                <th scope="col" class="px-4 py-4">
                                    <a href="{{ route('contacts.index', array_merge(request()->all(), ['sort' => 'name', 'order' => request('order') === 'asc' ? 'desc' : 'asc'])) }}"
                                        class="flex items-center">
                                        Name
                                        @if (request('sort') === 'name')
                                            <svg class="w-4 h-4 ml-1" fill="currentColor" xmlns="http://www.w3.org/2000/svg"
                                                viewBox="0 0 20 20">
                                                <path d="M10 3.5l4.5 6H5.5l4.5-6zM10 16.5l-4.5-6h9l-4.5 6z" />
                                            </svg>
                                        @endif
                                    </a>
                                </th>
                                <th scope="col" class="px-4 py-3">Email</th>
                                <th scope="col" class="px-4 py-3">Phone</th>
                                <th scope="col" class="px-4 py-3">Address</th>
                                <th scope="col" class="px-4 py-4">
                                    <a href="{{ route('contacts.index', array_merge(request()->all(), ['sort' => 'created_at', 'order' => request('order') === 'asc' ? 'desc' : 'asc'])) }}"
                                        class="flex items-center">
                                        Created at
                                        @if (request('sort') === 'created_at')
                                            <svg class="w-4 h-4 ml-1" fill="currentColor" xmlns="http://www.w3.org/2000/svg"
                                                viewBox="0 0 20 20">
                                                <path d="M10 3.5l4.5 6H5.5l4.5-6zM10 16.5l-4.5-6h9l-4.5 6z" />
                                            </svg>
                                        @endif
                                    </a>
                                </th>
                                <th scope="col" class="px-4 py-3">
                                    <span class="sr-only">Actions</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($contacts as $contact)
                                <tr class="border-b dark:border-gray-700">
                                    <th scope="row"
                                        class="px-4 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                        {{ $contact->name }}</th>
                                    <td class="px-4 py-3">{{ $contact->email }}</td>
                                    <td class="px-4 py-3">{{ $contact->phone }}</td>
                                    <td class="px-4 py-3">{{ $contact->address }}</td>
                                    <td class="px-4 py-3">{{ $contact->created_at->diffForHumans() }}</td>
                                    <td class="px-4 py-3 flex items-center justify-end space-x-2">
                                        <a href="{{ route('contacts.show', $contact->id) }}"
                                            class="text-blue-600 hover:text-blue-900 dark:text-blue-400 dark:hover:text-blue-300">
                                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <path fill-rule="evenodd"
                                                    d="M10 2a8 8 0 11-8 8 8 8 0 018-8zm0-2a10 10 0 10 10 10A10 10 0 0010 0zM9 4a1 1 0 012 0v2a1 1 0 01-2 0V4zM9 8a1 1 0 012 0v4a1 1 0 01-2 0V8z"
                                                    clip-rule="evenodd" />
                                            </svg>


                                        </a>
                                        <a href="{{ route('contacts.edit', $contact->id) }}"
                                            class="text-gray-600 hover:text-gray-900 dark:hover:text-white">
                                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <path
                                                    d="M17.414 2.586a2 2 0 00-2.828 0L7 10.172V13h2.828l7.586-7.586a2 2 0 000-2.828z" />
                                                <path fill-rule="evenodd" clip-rule="evenodd"
                                                    d="M2 6a2 2 0 012-2h4a1 1 0 010 2H4v10h10v-4a1 1 0 112 0v4a2 2 0 01-2 2H4a2 2 0 01-2-2V6z" />
                                            </svg>
                                        </a>
                                        <form action="{{ route('contacts.destroy', $contact->id) }}" method="POST"
                                            class="inline">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit"
                                                class="text-red-600 hover:text-red-900 dark:hover:text-red-400">
                                                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                                        d="M6.09922 0.300781C5.93212 0.30087 5.76835 0.347476 5.62625 0.435378C5.48414 0.523281 5.36931 0.649009 5.29462 0.798481L4.64302 2.10078H1.59922C1.36052 2.10078 1.13161 2.1956 0.961451 2.36576C0.791294 2.53591 0.696472 2.76482 0.696472 3.00352C0.696472 3.24222 0.791294 3.47113 0.961451 3.64129C1.13161 3.81145 1.36052 3.90628 1.59922 3.90628H2.30743L3.10743 17.4993C3.1223 17.7393 3.22795 17.9608 3.40393 18.1186C3.57991 18.2764 3.81347 18.3594 4.05452 18.3443H15.1445C15.3856 18.3594 15.6191 18.2764 15.7951 18.1186C15.971 17.9608 16.0767 17.7393 16.0915 17.4993L16.8915 3.90628H17.5992C17.8379 3.90628 18.0668 3.81145 18.2369 3.64129C18.4071 3.47113 18.5019 3.24222 18.5019 3.00352C18.5019 2.76482 18.4071 2.53591 18.2369 2.36576C18.0668 2.1956 17.8379 2.10078 17.5992 2.10078H14.5554L13.9038 0.798481C13.8291 0.649009 13.7143 0.523281 13.5722 0.435378C13.4301 0.347476 13.2663 0.30087 13.0992 0.300781H6.09922ZM7.39062 2.10078H11.7969L12.2969 3.90628H6.89062L7.39062 2.10078ZM5.09922 5.70078L5.83547 17.1008H13.363L14.0992 5.70078H5.09922Z" />
                                                </svg>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="p-4">
                        {{ $contacts->appends(request()->query())->links() }}
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End block -->
@endsection
