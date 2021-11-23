<div class="mt-3">
<h1 class="text-center"><?=$params['menus']->menu_name ?? 'Créer un menu'?></h1>
<form action="<?=isset($params['menus']) ? "/admin/menu/edit/{$params['menus']->id}" : "/admin/menu/create"?>" method="POST">
    <div class="form-group">
    <label for="menu_name" >Titre menu</label>
    <input type="text" id="menu_name" class="form-control" name="menu_name" value="<?=$params['menus']->menu_name ?? ''?>" required>
    </div>

    <div class="form-group">
    <label for="lien" >Url</label>
    <input type="text" id="lien" class="form-control" name="lien" value="<?=$params['menus']->lien ?? ''?>" required>
    </div>

    <div class="form-group">
    <label for="lien" >Associé à</label>

    </div>

    <button type="submit" class="btn btn-primary">Envoyez informations</button>
</form>

<div class="post_dispo">
    <h1 class="post_dispo_title">Les publications a indexé</h1>
<div class="post_card_container">
<?php foreach ($params['post'] as $post): ?>

 <div class="post_card">
     <h1 class="post_card_title"><a href="/posts/<?=$post->id?>" class="post_card_lien"><?=$post->title?></a></h1>
     <div class="post_card_content">
        <p>
            <?=$post->getExerpt()?>

        </p>
     </div>
     <div class="post_card_tag">

         <p>Tags:
            <?php foreach ($post->getTags() as $tag): ?>
         <small><?=$tag->name?></small>
         <?php endforeach?>
        </p>
        <p>Lien: /posts/<?=$post->id?></p>
     </div>
 </div>
 <?php endforeach?>
</div>
</div></div>