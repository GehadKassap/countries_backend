<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\CountryController;
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


//Retrieve all Countries with pagination
Route::apiResource('countries' , CountryController::class);

//Filter country by name
Route::get('get_country' , [CountryController::class , 'getCountry']);

//Filter country by status
Route::get('get_countries_status' , [CountryController::class , 'getStatus']);
