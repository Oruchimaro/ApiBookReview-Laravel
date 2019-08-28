<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Book;
use App\Rating;
use App\Http\Resources\RatingResource;

class RatingController extends Controller
{
    public function __construct()
    {
      $this->middleware('auth:api');
    }
    
    /**This function is used to rate  a specefic book
     * The "firstOrCreate" checks too see if a user already rated a sepecefic book
     * If the user has, we simply return a rating resource based on the rating.
     * Otherwise, we add the user rating to the specified book and persist it to the database
     * Then we return a rating resource based on the newly added rating.
     */
    public function store(Request $request ,Book $book)
    {
        $rating = Rating::firstOrCreate(
            ['user_id' => $request->user()->id,
             'book_id' => $book->id,
            ], 
            ['rating' => $request->rating 
            ]
        );

        return new RatingResource($rating);
    }
}
