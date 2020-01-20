<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

# About This

this tutorial was copied from 
    https://blog.pusher.com/build-rest-api-laravel-api-resources/


we have seen what API resources are and how we can build an API with them. Also,
 we covered how to add authentication with JWT to an API in Laravel.

Do check the official docs to learn more about API resources. 
The complete code for this tutorial is available on GitHub.

link to github :
    https://github.com/ammezie/book-reviews-api
==============================================================================================================


## Usage:
clone to a directory and cd into it

$ composer install

$ cp .env.example .env

Edit database credentials in .env file

Create a Database 

import .sql file into it or $ php artisan migrate

Add the postman collection to postman agent or Insomnia Collection to insomnia agent

$ php artisan key:generate

$ php artisan jwt:secret

$ php artisan serve


make requests using postman.


***
### How to use:
Open Http Request Agent (Postman or Insomnia)

Register A User Or Login With A User

Get the token generated and use it for other requests 

Add the Token to header->authorization section of requests (Authorization:bearer <token>)

get the access token,

Tips: For the above to work, the API requests will need the header Accept: application/json
****
#### Requests :

Login, 
Register, 
Get Books, 
Get A Book, 
Store A Book, 
Update A Book, 
Rate A Book, 
Delete A Book.


