<?php

namespace App\Models;

class Image extends Model
{
    protected $table = 't_photo';

    /**
     *Elle récupere l'image la modélise la place dans un fichier et créer une requete sql pour la BDD
     *
     *
     */
    public function myImg()
    {
        if (isset($_FILES) && !empty($_FILES) && !empty($_FILES['file']['name'])) {
            $type = $_FILES['file']['type'];
            if ($type == 'image/jpeg' || $type == 'image/png' || $type == 'image/jpg' || $type == 'image/gif') {
                $uploaddir = UPLOAD;
                $tab_name = explode('.', $_FILES['file']['name']);
                $unique_name = uniqid('img_') . '.' . $tab_name[count($tab_name) - 1];

                $uploadfile = $uploaddir . $unique_name;

                if (move_uploaded_file($_FILES['file']['tmp_name'], $uploadfile)) {
                    $stmt = $this->db->getPDO()->prepare("INSERT INTO t_photo (nom_fichier) VALUES (?)");
                    $stmt->execute([$unique_name]);
                    return true;
                }

            } else {
                die('Fichier non valide');
            }

            return true;
        }
    }

}
