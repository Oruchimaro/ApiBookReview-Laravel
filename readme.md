<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About This

this tutorial was copied from 
    https://blog.pusher.com/build-rest-api-laravel-api-resources/


we have seen what API resources are and how we can build an API with them. Also,
 we covered how to add authentication with JWT to an API in Laravel.

Do check the official docs to learn more about API resources. 
The complete code for this tutorial is available on GitHub.

link to github :
    https://github.com/ammezie/book-reviews-api
==============================================================================================================


Usage:
clone to a directory
$ composer install
$ npm install
make a ".env" file and enter your db credentials
add the postman collection to postman agent
import the .sql file to db
$ php artisan serve

make requests using postman.


****
How to use:
open postman.
make register req with credentials.
get the access token,
for any other request except login you need to add the token to request header token Bearer.
Tips: For the above to work, the API requests will need the header Accept: application/json
****


