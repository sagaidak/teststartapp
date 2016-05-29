<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "assignment".
 *
 * @property integer $id
 * @property integer $user_id
 * @property integer $project_id
 * @property integer $role_id
 */
class Assignment extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'assignment';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'project_id', 'role_id'], 'required'],
            [['user_id', 'project_id', 'role_id'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => 'User ID',
            'project_id' => 'Project ID',
            'role_id' => 'Role ID',
        ];
    }
}
