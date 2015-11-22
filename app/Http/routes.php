<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
Route::get('/', function () {
    return view('fm_user/index');
});

Route::get('/admin', function () {
    return view('fm_admin/index');
});

//Route::get('shoplist', 'ShopController@getAllShop');

Route::group(array('prefix' => '/'), function() {
    
    Route::get('shoplist', 'ShopController@getAllShop');
});

/*
Route::get('/', 'WelcomeController@index');
Route::get('home', 'HomeController@index');
Route::controllers([
'auth' => 'Auth/AuthController',
'password' => 'Auth/PasswordController',
]);
*/
