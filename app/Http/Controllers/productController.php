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
    public function categoriesHat(){

        $products= Products::all();
        return view('hat',["products"=>$products]);

    }
    public function categoriesMask(){

        $products= Products::all();
        return view('mask',["products"=>$products]);

    }
    public function categoriesTotebag(){

        $products= Products::all();
        return view('totebag',["products"=>$products]);

    }
    public function categoriesWallet(){

        $products= Products::all();
        return view('wallet',["products"=>$products]);

    }

}
