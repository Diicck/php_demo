<?php

namespace app\model;

use think\Model;

class Role extends Model
{
    // 模型对应的数据表名称
    protected $name = 'role';

    // 定义Role模型与User模型的一对多关系
    public function users()
    {
        // 通过hasMany方法建立一对多关系
        // Role模型拥有多个User模型的记录，通过 "roleId" 字段与 User 模型的 "id" 字段关联
        return $this->hasMany(User::class, 'roleId', 'id');
    }
}