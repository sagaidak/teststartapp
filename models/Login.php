<?php
/**
 * Created by PhpStorm.
 * User: arka
 * Date: 27.05.2016
 * Time: 17:33
 */

namespace app\models;


use yii\base\Model;

class Login extends Model
{
    public $email;
    public $password;

    public function rules()
    {
        return [
            [['email', 'password'], 'required'],
            ['email', 'email'],
            ['password', 'validatePassword'],
        ];
    }

    public function validatePassword($attribute, $params)
    {
        if (! $this->hasErrors()) {
            $user = $this->getUser();
            if (!$user || ! $user->validatePassword($this->password)) {
                $this->addError($attribute, 'Password or email is incorrect');
            }
        }

    }

    public function getUser()
    {
        return User::findOne(['email' => $this->email]);
    }
}