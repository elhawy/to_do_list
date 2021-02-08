<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
 */

Route::prefix('items')->group(function () {
    Route::post('/', 'ItemController@store')->name('api.item.add');
    Route::get('/', 'ItemController@index')->name('api.item.list');
    Route::get('export/', 'ItemController@export')->name('api.report.export');
    Route::get('/{id}', 'ItemController@show')->name('api.item.view');
    Route::put('/{id}', 'ItemController@update')->name('api.item.update');
});
