<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Log;
use App\Shops;
use App\Address;
use App\Catalog;
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
        log::info($addressData);

        $locId = Address::addLocation($addressData);

        return Response::json($shopId);
    }

    public function formAddress($request){
        $addressData = array(
            "address1" => $request->get("address1"),
            "address2" => $request->get("address2"),
            "area" => $request->get("area"),
            "city" => $request->get("city"),
            "state" => $request->get("state"),
            "country" => $request->get("country"),
            "zip_code" => $request->get("zip_code"),
            "mobile" => $request->get("mobile_no"),
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

    public function addCatalog(Request $request){
        log::info('add catalog');
        log::info($request);

        try{
        if ($request->get("img") != null) {
            log::info('if');
            $base64data = $request->get("img");
            $filename = str_random ( 60 );
            $uri = substr($base64data, strpos ( $base64data, "," ) + 1 );
            $url = public_path () . '/fm_user/images/fm/catalog/'.$request->get('shop_id').'/';
            if (! File::exists ( $url )) {
                File::makeDirectory ( $url, $mode = 0777, true, true );
            }
            File::put ( $url . $filename . '.jpg', base64_decode ( $uri ) );
            $catalogData = array (
                'media_url' => $url . $filename . '.jpg' 
            );
        }

            $catalogData['location_id'] = $request->get('location_id');
            $catalogData['description'] = $request->get('description');
            $catalogData['name'] = $request->get('name');

            $catalogId = Catalog::create($catalogData)->id;
            return Response::json($catalogId);
        }
        catch(Exception $e){
            log::info($e);
            return Response::json('ERROR');

        }
    }


}
