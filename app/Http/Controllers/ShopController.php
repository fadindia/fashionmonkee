<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Log;
use App\Shops;
use Response;
use DB;

class ShopController extends Controller
{
	public function getAllShop(Request $data)
	{
		$value = DB::table('shops')->get();
		return response()->json($value);
	}
}
