<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HasilSurvey;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post("hasil-survey/total", [Hasil_SurveyController::class, "calculateTotal"]);
Route::post("hasil-survey/sum-reports", [Hasil_SurveyController:: class, "calculateSumReports"]);
Route::post("hasil-survey/average-gpa", [Hasil_SurveyController:: class, "calculateAverageGpa"]);
