<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class BookREsource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'user_id' => $this->user_id,
            'book_id' => $this->book_id,
            'rating' => $this->rating,
            'created_at' => (string) $this->created_at,
            'updated_at' => (string) $this->updated_at,
            'book' =>$this->book, //response will contain the book that rating is for
            
            /**We are using the ratings relationship defined of 
             * the Book model to fetch all the ratings that have be made on the specified book 
             * Then, using collection avg(), we get the average of the ratings. 
             * Passing rating to the avg() function indicates
             *  that we want to calculate the average based on the book rating.
             * Now, whenever the BookResource is used, the response will contain 
             * the average rating of the book*/
            'average_rating' => $this->ratings->avg('rating')
        ];
        // return parent::toArray($request);
    }
}
