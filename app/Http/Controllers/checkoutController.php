<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Order;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class checkoutController extends Controller
{
    //
    public function index(){
        $cartitems = Cart::where('user_id', Auth::id())->get();
        return view('checkout', compact('cartitems'));
    }

    function form(Request $req){
        // return $req->input();
        $order = new Order;
        $order->customer_first_name=$req->fname;
        $order->customer_last_name=$req->lname;
        $order->customer_email=$req->email;
        $order->customer_phone=$req->phone;
        $order->customer_address1=$req->address;
        $order->customer_address2=$req->address2;
        $order->customer_city=$req->address2;
        $order->customer_state=$req->address2;
        $order->customer_country=$req->address2;
        $order->customer_postcode=$req->address2;
        $order->save();
        return redirect('/');
    }
}
