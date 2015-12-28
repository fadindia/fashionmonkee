<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Catalog extends Model
{
     protected $table = 'catelog';

     protected $fillable = ['name','description','location_id','media_url'];
}