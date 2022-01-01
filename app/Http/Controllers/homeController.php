<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Products;

class homeController extends Controller
{
    //
    public function index(){
        $products = Products::inRandomOrder()->take(8)->get();
        return view('home')->with('products',$products);
    }
}
