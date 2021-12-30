<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Models\User;

class userController extends Controller
{
    //
    function login(Request $req){

        // $data= $req->input();
        // $req->session()->put('user',$data['user']);
        // echo session('user');

        $user= User::where(['email'=>$req->email])->first();
        if(!$user || !Hash::check($req->password,$user->password))
        {
            return "Username or Password is incorrect";
        }
        else{
            $req->session()->put('user,$user');
            return redirect('/');
        }
    }


    function register(Request $req){
        // return $req->input();
        $user = new User;
        $user->name=$req->name;
        $user->email=$req->email;
        $user->password=Hash::make($req->password);
        $user->save();
        return redirect('/login');
    }
    function admin(Request $req){
        $admin= User::where(['email'=>$req->email])->first();
        if(!$admin || !Hash::check($req->password,$admin->password))
        {
            return "Username or Password is incorrect";
        }
        else{
            $req->session()->put('admin,$admin');
            return redirect('/admin/dashboard');
        }
    }

    
}
