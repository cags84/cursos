<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ResumeController;

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::resource('resumes', ResumeController::class);

/*
Route::get('/resumes', [App\Http\Controllers\ResumeController::class, 'index'])->name('resumes.index');
Route::get('/resumes/create', [App\Http\Controllers\ResumeController::class, 'create'])->name('resumes.create');
Route::post('/resumes', [App\Http\Controllers\ResumeController::class, 'store'])->name('resumes.store');
Route::get('/resumes/{resume}', [App\Http\Controllers\ResumeController::class, 'show'])->name('resumes.show');
Route::get('/resumes/{resume}/edit', [App\Http\Controllers\ResumeController::class, 'edit'])->name('resumes.edit');
Route::put('/resumes/{resume}', [App\Http\Controllers\ResumeController::class, 'update'])->name('resumes.update') ;
Route::delete('/resumes/{resume}', [App\Http\Controllers\ResumeController::class, 'destroy'])->name('resumes.destroy');
*/
