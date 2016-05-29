<?php
/**
 * Created by PhpStorm.
 * User: arka
 * Date: 27.05.2016
 * Time: 16:44
 */
use \yii\widgets\ActiveForm;
use \app\models\City;

$form = ActiveForm::begin(['class' => 'form-horizontal']);
?>

<?= $form->field($model, 'email')->textInput(['autofocus' => true])  ?>
<?= $form->field($model, 'password')->passwordInput() ?>
<?= $form->field($model, 'name')->textInput() ?>
<?= $form->field($model, 'city')->dropdownList(
    City::find()->select(['name', 'id'])->indexBy('name')->column(),
    ['prompt'=>'Select City']
)?>

<div>
    <button type="submit" class="btn btn-primary">Submit</button>
</div>

<?php
ActiveForm::end();
?>
