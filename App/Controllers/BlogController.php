<?php

namespace App\Controllers;

use App\Models\Image;
use App\Models\Menu;
use App\Models\Post;
use App\Models\Tag;

class BlogController extends Controller
{
    public function welcome()
    {
        $menu = (new Menu($this->getDB()))->all();

        return $this->view('blog.welcome', compact('menu'));
    }

    public function index()
    {
        $post = new Post($this->getDB());
        $menu = (new Menu($this->getDB()))->all();
        $posts = $post->all();
        return $this->view('blog.index', compact('posts', 'menu'));
    }

    public function show(int $id)
    {
        $post = new Post($this->getDB());
        $post = $post->findById($id);
        $menu = (new Menu($this->getDB()))->all();
        return $this->view('blog.show', compact('post', 'menu'));
    }

    public function tag(int $id)
    {
        $tag = (new Tag($this->getDB()))->findById($id);
        $menu = (new Menu($this->getDB()))->all();

        return $this->view('blog.tag', compact('tag', 'menu'));
    }

    public function diaporama()
    {
        $menu = (new Menu($this->getDB()))->all();
        $img = new Image($this->getDB());
        $img = $img->allNotDate();
        return $this->view('blog.diaporama', compact('menu', 'img'));
    }
}
