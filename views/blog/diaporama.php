<div class="mt-4">
<h1 class="mb-4 text-center">Bienvenue sur le diaporama</h1>

<div class="diapo_container ">
    <?php foreach ($params['img'] as $img): ?>
        <div class="diapo_card">
        <img src="../../upload/<?=$img->nom_fichier?>" alt="" class="diapo_img">

                <div class="diapo_info_img">
                    <p class='diapo_info'><?=$img->nom_fichier?></p>
                </div>
        </div>
    <?php endforeach?>
</div>
</div>

