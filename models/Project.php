<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "project".
 *
 * @property integer $id
 * @property string $name
 * @property string $status
 * @property string $description
 */
class Project extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'project';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['description'], 'string'],
            [['name', 'status'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'status' => 'Status',
            'description' => 'Description',
        ];
    }

//    public function relations()
//    {
//        return array(
//            'author'=>array(self::BELONGS_TO, 'User', 'author_id'),
//            'categories'=>array(self::MANY_MANY, 'Category',
//                'tbl_post_category(post_id, category_id)'),
//        );
//    }

    public function getAssignment()
    {
        return $this->hasMany(Assignment::className(), ['project_id' => 'id']);
    }
}
