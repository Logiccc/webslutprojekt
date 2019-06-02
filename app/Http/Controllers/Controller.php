<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
}
//Få data från databasen till hemsidan
function getData()
{
    $data['data'] = DB::table('vapen')->get();

    if(count($data[0]) > 0)
    {
        return view('welcome' ,$data);
    }
    else
    {
        return view('welcome');
    }
}
