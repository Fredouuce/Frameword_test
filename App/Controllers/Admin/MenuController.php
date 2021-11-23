<?php

namespace App\Controllers\Admin;

use App\Controllers\Controller;
use App\Models\Menu;
use App\Models\Post;

class MenuController extends Controller
{

    public function index()
    {
        $this->isAdmin();
        $menu = (new Menu($this->getDB()))->all();

        return $this->view('admin.menu.index', compact('menu'));

    }

    public function create()
    {
        $this->isAdmin();
        $menu = (new Menu($this->getDB()))->all();
        $post = (new Post($this->getDB()))->all();

        return $this->view('admin.menu.form', compact('menu', 'post'));
    }

    public function createMenu()
    {
        $this->isAdmin();

        $post = new Menu($this->getDB());

        $result = $post->create($_POST);

        if (is_array($result)) {
            return header('Location: /admin/menu');
        }

    }

    public function destroy(int $id)
    {
        $this->isAdmin();

        $menu = new Menu($this->getDB());
        $result = $menu->destroy($id);

        if ($result) {
            return header('Location: /admin/menu');
        }
    }

    public function edit(int $id)
    {
        $this->isAdmin();

        $menus = (new Menu($this->getDB()))->findById($id);
        $menu = (new Menu($this->getDB()))->all();
        $post = (new Post($this->getDB()))->all();

        return $this->view('admin.menu.form', compact('menu', 'menus', 'post'));

    }

    public function update(int $id)
    {
        $this->isAdmin();
        $menu = new Menu($this->getDB());
        $result = $menu->update($id, $_POST);

        if ($result) {
            return header('Location: /admin/menu');
        }

    }
}
