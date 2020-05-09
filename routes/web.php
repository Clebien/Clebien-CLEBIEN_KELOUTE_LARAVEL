<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::view('/','HOME');

Route::resource('individu','ProjetController');
Route::get('groupe','groupeController@index');
Route::post('groupe/{libelle}','groupeController@show');
Route::get('groupe/{libelle}','groupeController@show');
Route::resource('groupe','groupeController');
Route::resource('ajouter','createGroupeController');

Route::post('exportGroupe', 'ExportController@exportGroupe');
Route::post('exportIndividu', 'ExportController@exportIndividu');


Route::get('import-groupe', 'ImportController@index');
Route::post('import-groupe', 'ImportController@importGroupe');

Route::get('import-individu', 'ImportController@create');
Route::post('import-individu', 'ImportController@importIndividu');

Route::post('exportJson','createGroupeController@create');


