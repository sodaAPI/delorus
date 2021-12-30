<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\userController;
use App\Http\Controllers\productController;
use App\Http\Controllers\recommendController;

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

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


// General //

Route::get('/', function () {
    return view('home');
});

Route::get('/productlist', function () {
    return view('productlist');
});
Route::get('/login', function () {
    return view('login');
});
Route::get('/register', function () {
    return view('register');
});
Route::get('/logout', function () {
    return view('home');
});
Route::get('/cart', function () {
    return view('cart');
});
Route::get('/about', function () {
    return view('aboutus');
});
Route::get('/faq', function () {
    return view('faq');
});

Route::get('/category', function () {
    return view('category');
});

Route::get('/hat', function () {
    return view('hat');
});

Route::get('/mask', function () {
    return view('mask');
});

Route::get('/totebag', function () {
    return view('totebag');
});

Route::get('/wallet', function () {
    return view('wallet');
});


// Post //

Route::post('login',[userController::class,'login']);
Route::post('/register',[userController::class,'register']);
Route::post('productlist',[productController::class,'index']);
Route::post('/',[recommendController::class,'index']);

// Get //

Route::get('productlist','App\Http\Controllers\productController@index');
Route::get('/','App\Http\Controllers\recommendController@index');

