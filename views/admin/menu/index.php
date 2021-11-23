<div class="centered">
<h1>Gérer Menu</h1>

<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Titre</th>
      <th scope="col">Publié le</th>
      <th scope="col">Lien</th>
      <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody>

      <?php foreach ($params['menu'] as $menu): ?>
        <tr>
        <th scope="row"><?=$menu->id?></th>
        <td><?=$menu->menu_name?></td>
        <td><?=$menu->getCreatedAt()?></td>
        <td><?=$menu->lien?></td>
        <td>
            <a href="/admin/menu/edit/<?=$menu->id?>" class="btn btn-warning">Modifier</a>
            <form action="/admin/menu/delete/<?=$menu->id?>" method="POST" class='d-inline'>
                <button type='submit' class="btn btn-danger">Supprimer</button>
            </form>
        </td>
        </tr>
       <?php endforeach?>
  </tbody>
</table>
</div>