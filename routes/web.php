<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\userController;
use App\Http\Controllers\productController;
use App\Http\Controllers\homeController;
use App\Http\Controllers\recommendController;
use App\Http\Controllers\checkoutController;
use TCG\Voyager\Models\Role;

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

Route::get('/checkout', function () {
    return view('checkout');
});
Route::get('/productdetail', function () {
    return view('productdetail');
});

Route::get('search', 'App\Http\Controllers\productController@cari')->name('search');

// Post //

Route::post('login',[userController::class,'login']);
Route::post('/register',[userController::class,'register']);
Route::post('productlist',[productController::class,'index']);
Route::post('hat',[productController::class,'categoriesHat']);
Route::post('mask',[productController::class,'categoriesMask']);
Route::post('totebag',[productController::class,'categoriesTotebag']);
Route::post('wallet',[productController::class,'categoriesWallet']);
Route::post('/','App\Http\Controllers\recommendController@index');
Route::post('home','App\Http\Controllers\recommendController@index');
Route::post('cart', 'App\Http\Controllers\cartController@store')->name('cart.store');

// Get //

Route::get('productlist','App\Http\Controllers\productController@index');
Route::get('hat','App\Http\Controllers\productController@categoriesHat');
Route::get('mask','App\Http\Controllers\productController@categoriesMask');
Route::get('totebag','App\Http\Controllers\productController@categoriesTotebag');
Route::get('wallet','App\Http\Controllers\productController@categoriesWallet');
Route::get('/','App\Http\Controllers\recommendController@index');
Route::get('home','App\Http\Controllers\recommendController@index');
// Route::get('/', 'App\Http\Controllers\homeController@index')->name('home');
Route::get('cart', 'App\Http\Controllers\cartController@index')->name('cart.index');
// Route::get('checkout', 'App\Http\Controllers\checkoutController@index')->name('checkout.index');

Route::get('empty', function(){
    Cart::destroy();
});

Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Delete //

Route::delete('/cart/{product}', 'App\Http\Controllers\cartController@destroy')->name('cart.destroy');







