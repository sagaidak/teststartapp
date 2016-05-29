<?php

namespace app\controllers;


use app\models\Login;
use app\models\Project;
use app\models\User;
use Yii;
use yii\web\Controller;
use app\models\Signup;
use yii\data\Pagination;



class SiteController extends Controller
{
    public function actionIndex()
    {
        $proj = Project::find()->joinWith('assignment')->orderBy(['project.id' => SORT_DESC]);

        $countQuery = clone $proj;
        $pages = new Pagination(['totalCount' => $countQuery->count(),  'pageSize' => 5]);
        $model = $proj->offset($pages->offset)
            ->limit($pages->limit)
            ->all();

        return $this->render('index', [
            'model' => $model,
            'pages' => $pages,
            'proj' => $proj,

        ]);
    }

    public function actionSignup()
    {
        if (! Yii::$app->user->isGuest) {
            return $this->goHome();
        }
        $model = new Signup();
        if (isset($_POST['Signup'])) {
            $model->attributes = Yii::$app->request->post('Signup');
            if ($model->validate() && $model->signup()) {
                return $this->goHome();
            }
        }
        return $this->render('signup', ['model' => $model]);
    }

    public function actionLogin()
    {
        if (! Yii::$app->user->isGuest) {
            return $this->goHome();
        }
        $model = new Login();
        if (Yii::$app->request->post('Login')) {
            $model->attributes = Yii::$app->request->post('Login');
            if ($model->validate()) {
                Yii::$app->user->login($model->getUser());
                return $this->goHome();
            }

        }
        return $this->render('login', ['model' => $model]);
    }

    public function actionLogout()
    {
        if (! Yii::$app->user->isGuest) {
            Yii::$app->user->logout();
            return $this->goHome();
        }
    }
}