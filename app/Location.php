<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
     protected $table = 'location';

     protected $fillable = ['address_id','shop_id','open_from','open_to'];
}