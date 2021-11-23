<?php

namespace App\Controllers\Admin;

use App\Controllers\Controller;
use App\Models\Image;

class DiaporamaController extends Controller
{
    public function index()
    {
        $this->isAdmin();
        return $this->view('blog.diaporama');
    }

    public function create()
    {
        $this->isAdmin();
        return $this->view('admin.diaporama.form');
    }

    public function upload()
    {
        $this->isAdmin();
        $img = new Image($this->getDB());
        $result = $img->myImg();
        if ($result) {
            header('Location: /diaporama');
        }
    }
}
