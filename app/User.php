<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Tymon\JWTAuth\Contracts\JWTSubject; //implementing JWTauth
use App\Book;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable implements JWTSubject 
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**The relation between user and the book model
     * User can add many books 1-M 
     */
    public function books()
    {
        return $this->hasMany(Book::class);
    }

    /**==================================JWT=========================================== */
    //JWTauth Methods that we need so we can use jwtauthentication
    /** This gets the identifier that will be stored in
     *  the subject claim of the JWT
    */
    public function getJWTIdentifier()
    {
      return $this->getKey();
    }

    /**
     *  This allow us to add any custom claims we want added to the JWT
     */
    public function getJWTCustomClaims()
    {
      return [];
    }
    /**=================================JWT End=========================================== */
}
