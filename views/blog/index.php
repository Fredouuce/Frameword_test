<h1 class="text-center">Les derniers articles</h1>

<?php foreach ($params['posts'] as $post): ?>

    <div class="card mb-3">
        <div class="card-body">
            <h2><?=$post->title?></h2>
            <div>
                <?php foreach ($post->getTags() as $tag): ?>
                    <span class="badge btn-success"><a href="/tags/<?=$tag->id?>" class="text-white text-decoration-none"><?=$tag->name?></a></span>
                <?php endforeach?>
             </div>
            <small class="text-info">Publié le <?=$post->getCreatedAt()?></small>
            <p><?=$post->getExerpt()?></p>
            <?=$post->getButton()?>
        </div>
    </div>
<?php endforeach?>

