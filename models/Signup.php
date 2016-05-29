<?php
/**
 * Created by PhpStorm.
 * User: arka
 * Date: 27.05.2016
 * Time: 16:45
 */

namespace app\models;


use yii\base\Model;

class Signup extends Model
{
    public $email;
    public $password;
    public $name;
    public $city;

    public function rules()
    {
        return [
            [['email', 'password'], 'required'],
            ['email', 'email'],
            ['email', 'unique', 'targetClass' => 'app\models\User'],
            ['password', 'string', 'min' => 2, 'max' => 15],
            ['name', 'string'],
            ['city', 'string'],
        ];
    }

    public function signup()
    {
        $user = new User();
        $user->email = $this->email;
        $user->setPassword($this->password);
        $user->name = $this->name;
        $user->city = $this->city;
        return $user->save();
    }
}