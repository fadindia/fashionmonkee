<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App/Location;

class Address extends Model
{
     protected $table = 'address';

     protected $fillable = [
            'address_1',
            'address_2',
            'area',
            'city',
            'state',
            'country',
            'phone',
            'mobile',
            'zip_code'
     ];

     public function addAddress($addressData){
     	$addressId = DB::table('address')::create($addressData))->id;
        return $addressId;

     }

     public function addLocation($data){
     	$shop_id = $data['shop_id'];
     	$open_from = $data['open_from'];
     	$open_to = $data['open_to'];
     	$locId = null;

     	unset($data['shop_id'],$data['open_from'],$data['open_to']);
      	$addressId = $this->addAddress($data);
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
