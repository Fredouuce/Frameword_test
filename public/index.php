<?php

use App\Exceptions\NotFoundException;
use Router\Router;

require '../vendor/autoload.php';

define('VIEWS', dirname(__DIR__) . DIRECTORY_SEPARATOR . 'views' . DIRECTORY_SEPARATOR);
define('SCRIPT', dirname($_SERVER['SCRIPT_NAME']) . DIRECTORY_SEPARATOR);
define('UPLOAD', dirname(__DIR__) . DIRECTORY_SEPARATOR . 'upload' . DIRECTORY_SEPARATOR);
define('DB_NAME', 'testframework');
define('DB_HOST', '127.0.0.1');
define('DB_USER', 'root');
define('DB_PWD', '');

$router = new Router($_GET['url']);

$router->get('/', 'App\Controllers\BlogController@welcome');
$router->get('/posts', 'App\Controllers\BlogController@index');
$router->get('/posts/:id', 'App\Controllers\BlogController@show');
$router->get('/tags/:id', 'App\Controllers\BlogController@tag');
$router->get('/diaporama', 'App\Controllers\BlogController@diaporama');

$router->get('/login', 'App\Controllers\UserController@login');
$router->post('/login', 'App\Controllers\UserController@loginPost');
$router->get('/logout', 'App\Controllers\UserController@logout');

/**Traiment admin */
$router->get('/admin', "App\Controllers\Admin\IndexController@index");

/***** Post */
$router->get('/admin/posts', 'App\Controllers\Admin\PostController@index');
$router->get('/admin/posts/create', 'App\Controllers\Admin\PostController@create');
$router->post('/admin/posts/create', 'App\Controllers\Admin\PostController@createPost');

$router->post('/admin/posts/delete/:id', 'App\Controllers\Admin\PostController@destroy');
$router->get('/admin/posts/edit/:id', 'App\Controllers\Admin\PostController@edit');
$router->post('/admin/posts/edit/:id', 'App\Controllers\Admin\PostController@update');

/***** Menu */
$router->get('/admin/menu', 'App\Controllers\Admin\MenuController@index');
$router->get('/admin/menu/create', 'App\Controllers\Admin\MenuController@create');
$router->post('/admin/menu/create', 'App\Controllers\Admin\MenuController@createMenu');

$router->get('/admin/menu/edit/:id', 'App\Controllers\Admin\MenuController@edit');
$router->post('/admin/menu/edit/:id', 'App\Controllers\Admin\MenuController@update');
$router->post('/admin/menu/delete/:id', 'App\Controllers\Admin\MenuController@destroy');

/**Diaporama */
$router->get('/admin/diaporama/create', 'App\Controllers\Admin\DiaporamaController@create');
$router->get('/admin/diaporama', 'App\Controllers\Admin\DiaporamaController@index');
$router->post('/admin/diaporama/create', 'App\Controllers\Admin\DiaporamaController@upload');

try {
    $router->run();
} catch (NotFoundException $e) {
    echo $e->error404();
}
