<?php

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

/*Pages Web*/
Route::get('/', [
    'uses' => 'PagesController@getHome',
    'as'   => 'home',
]);

Route::get('/work', [
    'uses' => 'PagesController@getWork',
    'as'   => 'work',
]);

Route::get('/about', [
    'uses' => 'PagesController@getAbout',
    'as'   => 'about',
]);

Route::get('/blog', [
    'uses' => 'PagesController@getBlog',
    'as'   => 'blog',
]);

Route::get('/contact', [
    'uses' => 'PagesController@getContact',
    'as'   => 'contact',
]);

Route::get('/work/select-work', [
    'uses' => 'PagesController@getSelectWork',
    'as'   => 'select.work',
]);

Route::get('/blog/select-blog', [
    'uses' => 'PagesController@getSelectBlog',
    'as'   => 'select.blog',
]);

Route::post('/sendmail', [
    'uses' => 'PagesController@postContactMail',
    'as'   => 'sendmail',
]);

/*Pages Admin */

Route::group(['prefix' => 'admin'], function() {
    Route::get('/home', [
        'uses' => 'AdminController@getHome',
        'as' => 'home'
    ]);
});