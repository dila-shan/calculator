<?php

namespace App\Http\Controllers;

use App\Models\Calculation;
use Illuminate\Http\Request;

class CalculationController extends Controller
{
    public function calculate(Request $request)
    {
        // Validate request
        $request->validate([
            'method' => 'required|string',
            'result' => 'required|string',
        ]);

        try {
            // Store calculation
            $calculation = new Calculation();
            $calculation->method = $request->method;
            $calculation->result = $request->result;
            $calculation->save();

            // Respond with success message
            return response()->json(['message' => 'Calculation stored successfully'], 200);
        } catch (\Exception $e) {
            // Handle exceptions
            return response()->json(['message' => 'Failed to store calculation'], 500);
        }
    }
}
