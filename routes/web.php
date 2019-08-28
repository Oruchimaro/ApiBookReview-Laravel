<?php

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
    return view('welcome');
});

Route::get('books','BookController@index')->name('books.index');
Route::post('login', 'AuthController@login')->name('user.login'); //login user

// Route::post('book/store','BookController@store')->name('books.store');

