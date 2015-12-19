<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Log;
use App\Shops;
use App\Address;
use Response;
use DB;

class ShopController extends Controller
{
    public function getAllShop(Request $data)
    {
        $value = DB::table('shops')->get();
        return response()->json($value);
    }

    public function newShop(Request $request){
        $shopData['name'] = $request->get("name");
        $shopId = Shops::draftShop($shopData);
        $addressData = $this->formAddress($request);
        $addressData['shop_id'] = $shop_id;

        $locId = Address::addLocation($addressData);

        return Response::json($shop_id);

    }

    public function addShop(Request $request){
        log::info('hiuhihih');
        $shopData['name'] = $request->get("name");
        $shopId = Shops::saveShop($shopData)->id;
        log::info($shopId);
        $addressData = $this->formAddress($request);
        $addressData['shop_id'] = $shopId;

        $locId = Address::addLocation($addressData);

        return Response::json($shopId);
    }

    public function formAddress($request){
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

        return $addressData;
    }

    public function addAddress(Request $request){
       
        $addressData = $this->formAddress($request);
        $addressId = Address::addAddress($addressData);

        return Response::json($addressId);
    }

    public function addLocation(Request $request){
        $addressData = $this->formAddress($request);
        $addressData['shop_id'] = $request->get('shop_id');
        $addressData['open_from'] = $request->get('open_from');
        $addressData['open_to'] = $request->get('open_to');

        $locId = Address::addLocation($addressData);

        return Response::json($locId);
    }


}
