<?php

namespace App\Models;

class Menu extends Model
{
    protected $table = 'menu';

    public function getMenu(): Menu
    {
        return $this->query("SELECT * FROM {$this->table}", null, true);

    }

}
