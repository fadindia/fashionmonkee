<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Shops extends Model
{
     protected $table = 'shops';

     protected $fillable = [
            'name',
            'status',
     ];

     public static function saveShop($data){
     	$data['status'] = 1;
     	$shopId = Shops::create($data);
     	return $shopId;
     }

     public function draftShop($data){
     	$data['status'] = 0;
     	$shopId = Shops::create($data);
     	return $shopId;
     }
}
