<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Location;
use Illuminate\Support\Facades\Log;

class Address extends Model
{
     protected $table = 'address';

     protected $fillable = [
            'address1',
            'address2',
            'area',
            'city',
            'state',
            'country',
            'phone',
            'mobile',
            'zip_code'
     ];

     public static function addAddress($addressData){
        log::info($addressData);
         $addressId = Address::create($addressData)->id;
        return $addressId;

     }

     public static function addLocation($data){
         $shop_id = $data['shop_id'];
         $open_from = "";
         $open_to = "";
         $locId = null;

         unset($data['shop_id'],$data['open_from'],$data['open_to']);
          $addressId = Address::addAddress($data);
         if ($addressId != null) {           
            $locData = array(
                'address_id' => $addressId,
                'shop_id' => $shop_id,
                'open_from' => $open_from ,
                'open_to' => $open_to,
            );
            $locId = Location::create($locData)->id;
        }

        return $locId;
     }
}
