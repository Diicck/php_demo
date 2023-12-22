<?php

namespace app\model;

use think\Model;

class User extends Model
{
    // 模型对应的数据表名称
    protected $name = 'sysuser';

    // 定义User模型与Role模型的属于关系
    public function role()
    {
        // 通过belongsTo方法建立属于关系
        // User模型属于一个Role模型，通过 "roleId" 字段与 Role 模型的 "id" 字段关联
        return $this->belongsTo(Role::class, 'roleId', 'id');
    }

    // 定义User模型与Subject模型的一对多关系
    public function subjects()
    {
        // 通过hasMany方法建立一对多关系
        // User模型拥有多个Subject模型的记录，通过 "userId" 字段与 Subject 模型的 "id" 字段关联
        return $this->hasMany(Subject::class, 'userId', 'id');
    }
}