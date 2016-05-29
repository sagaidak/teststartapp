<?php
use \yii\widgets\ActiveForm;
$form = ActiveForm::begin();
?>

<?= $form->field($model, 'email')->textInput()  ?>
<?= $form->field($model, 'password')->passwordInput() ?>
<div>
    <button type="submit" class="btn btn-success">Login</button>
</div>

<?php
$form = ActiveForm::end();
?>
