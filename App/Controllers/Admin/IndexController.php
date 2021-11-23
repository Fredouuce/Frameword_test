<?php

namespace App\Controllers\Admin;

use App\Controllers\Controller;

class IndexController extends Controller
{
    public function index()
    {
        $this->isAdmin();

        return $this->view('admin.index');
    }

}
