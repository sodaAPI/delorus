<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Products;


class productController extends Controller
{
    // 
    public function index(){
        // return Products::all();
        // return view('home');
        // return view('home.index',compact('products'));

        $products= Products::all();
        return view('productlist',["products"=>$products]);


    }

}
