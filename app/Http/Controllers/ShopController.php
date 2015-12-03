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

	public function addAddress(Request $data){
		$address = DB::table('address')

		$addressData = array(
            "address1" => $request->get("address1"),
            "address2" => $request->get("address2"),
            "city" => $request->get("city"),
            "state" => $request->get("state"),
            "country" => $request->get("country"),
            "zip_code" => $request->get("zip_code"),
            "mobile_no" => $request->get("mobile"),
            "phone" => $request->get("phone")
        );

        $locationId = Location::find($request->get('location_id'));

        if ($locationId != null) {
            $addressSave = $locationId->address_id;
            DB::table('address')->where('id', $addressSave)->update($address);
        } else {
            $addressSave = Address::create($address)->id;
        }

        return $addressSave;

	}
}
