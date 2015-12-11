<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Shops extends Model
{
     protected $table = 'shops';

     protected $fillable = [
            'name',
            'status',
     ];

     public function saveShop($data){
     	$data['status'] = 1;
     	$shopId = DB::table('shops')::create($data);
     	return $shopId;
     }

     public function draftShop($data){
     	$data['status'] = 0;
     	$shopId = DB::table('shops')::create($data);
     	return $shopId;
     }
}
