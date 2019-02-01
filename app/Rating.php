<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rating extends Model
{
    //mass assigned for Rating model
    protected $fillable = ['book_id', 'user_id', 'rating'];
    /**The relation between rating and book
     * A rate belong only to a book M-1 (inverse)
     */
     public function book()
     {
         return $this->belongsTo('Book::class');
     }
}
