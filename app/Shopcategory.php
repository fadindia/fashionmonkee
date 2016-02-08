<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Log;
use DB;

class Shopcategory extends Model
{
     protected $table = 'shop_category';

     protected $fillable = [
            'location_id',
            'sub_category_id',
     ];

     public static function saveShopcategory($data){
        log::info("=========================");
        log::info($data);
     	$catData['location_id'] = $data['location_id'];
        log::info($data['sub_categories_id']);
        foreach ($data['sub_categories_id'] as $value) {
            $existCheck = Shopcategory::where('sub_category_id','=',$value)->where('location_id','=',$data['location_id'])->first();
            log::info($existCheck);
            try{
                if(empty($existCheck)){
                    $catData['sub_category_id'] = $value;
                    $ShopCategoryId = Shopcategory::create($catData);
                }
            }
            catch(\Exception $e){
               return 'Error while saving shop category';
            }
        }
        return 'The category list has been updated Successfully';
    }
}