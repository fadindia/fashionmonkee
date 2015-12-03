<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Shops extends Model
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
}
