<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Shopcategory extends Model
{
     protected $table = 'shop_category';

     protected $fillable = [
            'location_id',
            'sub_category_id',
     ];

     public static function saveShopcategory($data){
     	$catData['location_id'] = $data['location_id']
     	try{
     		foreach ($data['sub_cat_id'] as $value) {
     			$catData['sub_category_id'] = $value;
     			$ShopCategoryId = Shopcategory::create($catData);
     		}
     		return 'Successfully'
     	}
     	catch{
     		return 'Error while saving shop category';
     	}
     }

}