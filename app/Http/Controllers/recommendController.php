<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Recommends;


class recommendController extends Controller
{
    //
    function index(){
        $recommends= Recommends::all();
        return view('home',["recommends"=>$recommends]);

        // $recommends = Recommends::inRandomOrder()->take(8)->get();
        // return view('home')->with('recommends',$recommends);
    }

}
