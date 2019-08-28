<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;
use App\Rating;

class Book extends Model
{
    //mass assigend fields for Book model
    protected $fillable = ['user_id', 'title', 'description'];

    /**The relation between book and user
     * A book belongsto only one user M-1 (inverse)
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /** Relation between book and rating
     * A book can be rated by many users 1-M
     */
    public function ratings()
    {
        return $this->hasMany(Rating::class);
    }
}
