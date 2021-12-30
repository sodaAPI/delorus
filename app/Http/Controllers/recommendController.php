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
    }

}
