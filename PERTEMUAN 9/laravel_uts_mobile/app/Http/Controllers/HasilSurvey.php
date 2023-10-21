<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\HasilSurvey;

class HasilSurveyController extends Controller
{
    // Menghitung total data
    public function calculateTotal()
    {
        $total = HasilSurvey::count();
        return response()->json(['total' => $total]);
    }

    // Menghitung jumlah (sum) kolom "reports"
    public function calculateSumReports()
    {
        $sumReports = HasilSurvey::sum('reports');
        return response()->json(['sum_reports' => $sumReports]);
    }

    // Menghitung rata-rata (avg) kolom "gpa"
    public function calculateAverageGpa()
    {
        $averageGpa = HasilSurvey::avg('gpa');
        return response()->json(['average_gpa' => $averageGpa]);
    }
}