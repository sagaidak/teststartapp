<?php

use yii\db\Migration;

/**
 * Handles the creation for table `user_table`.
 */
class m160528_122505_create_user_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function up()
    {
        $this->createTable('user', [
            'id' => $this->primaryKey(),
            'email' => $this->string(100),
            'password' => $this->string(255),
            'name' => $this->string(255),
            'city' => $this->string(255),
        ]);
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable('user');
    }
}
