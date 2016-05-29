<?php
use yii\widgets\LinkPager;




echo '<h1>Projects:</h1>';
foreach ($model as $m) {
    echo '<div class="well">';
    $assing = $m->assignment;
    echo $pName = '<h3>' . $m->name . '</h3><br>';
    echo '<p>' . $m->description . '</p>';
    echo '<p><small class="alert-info">' . $m->status . '</small></p>';
    foreach ($assing as $c) {
        echo $pUser =  ' User: <kbd>' . \app\models\User::findOne($c->user_id)->name . '</kbd> ' ;
        echo $pUser = 'Role: <kbd>' . \app\models\Role::findOne($c->role_id)->name . '</kbd><br>';
    }
    echo '</div>';
}
?>



<?php echo LinkPager::widget([
    'pagination' => $pages,
]);
?>
