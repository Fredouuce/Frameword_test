<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?=SCRIPT . 'css' . DIRECTORY_SEPARATOR . 'app.css'?>">
    <link rel="stylesheet" href="<?=SCRIPT . 'css' . DIRECTORY_SEPARATOR . 'myCss.css'?>">
    <title>My webiste</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
</head>
<body>

 <?php if (!isset($_SESSION['auth'])): ?>
    <nav class="navbar navbar-expand-lg navbar-light bg-light ms-lg-5">
  <a class="navbar-brand" href="/">Blog</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    <?php foreach ($params['menu'] as $menu): ?>
       <li class="nav-item ">
        <a class="nav-link" href="<?=$menu->lien?>"><?=$menu->menu_name?></a>
      </li>
    <?php endforeach?>
    </ul>
  </div>
</nav>
<?php endif?>


<div class="content">
<?php if (isset($_SESSION['auth'])): ?>
<aside>
 <a href="/admin" class="admin-title"><i class="fas fa-home"></i> Panneau d'administration</a>
  <div class="panel_content">
    <div class="panel">
      <h3 class="titre_content"> <i class="fas fa-folder-open"></i> Article</h3>
      <small><a href="/admin/posts" class="lien">Gestion Article</a></small>
      <small><a href="/admin/posts/create" class="lien">Créer article</a></small>
      <small><a href="/posts" class="lien">Visiter article</a></small>
    </div>
    <div class="panel">
      <h3 class="titre_content"><i class="fas fa-bars"></i> Menu</h3>
      <small><a href="/admin/menu" class="lien">Gestion menu</a></small>
      <small><a href="/admin/menu/create" class="lien">Créer menu</a></small>
    </div>

    <div class="panel">
      <h3 class="titre_content"><i class="fas fa-images"></i> Diaporama</h3>
      <small><a href="/diaporama" class="lien">Gestion diaporama</a></small>
      <small><a href="/admin/diaporama/create" class="lien">Ajouter des images</a></small>
    </div>
</div>
  <a href="/logout" class="btn btn-danger btn_logout">Se déconnecter</a>


</aside>
<?php endif?>

    <div class="container">
        <?=$content?>
    </div>

</div>

<footer class="footer_modif <?=isset($_SESSION['auth']) ? '' : 'position1'?>">
  <p class="footer_p">&copy; Frédéric Payet 2021 Moteur inspiré de @NordCoder</p>
</footer>
</body>
</html>
