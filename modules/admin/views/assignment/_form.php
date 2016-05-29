<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Assignment */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="assignment-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'user_id')->dropdownList(
        \app\models\User::find()->select(['name', 'id'])->indexBy('id')->column(),
        ['prompt'=>'Select User']
    )?>

    <?= $form->field($model, 'project_id')->dropdownList(
        \app\models\Project::find()->select(['name', 'id'])->indexBy('id')->column(),
        ['prompt'=>'Select Project']
    )?>

    <?= $form->field($model, 'role_id')->dropdownList(
        \app\models\Role::find()->select(['name', 'id'])->indexBy('id')->column(),
        ['prompt'=>'Select Role']
    )?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
