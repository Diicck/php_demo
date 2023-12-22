<?php

namespace app\model;

use think\Model;

class Personnel extends Model
{
    // 模型对应的数据表名称
    protected $name = 'personnel';

    // 定义Personnel模型与Role模型的属于关系
    public function role()
    {
        // 通过belongsTo方法建立属于关系
        // Personnel模型属于一个Role模型，通过 "roleId" 字段与 Role 模型的 "id" 字段关联
        return $this->belongsTo(Role::class, 'roleId');
    }
}