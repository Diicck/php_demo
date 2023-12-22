<?php

namespace app\model;

use think\Model;

class Subject extends Model
{
    // 模型对应的数据表名称
    protected $name = 'subject';

    // 定义Subject模型与Personnel模型的一对多关系
    public function personnels()
    {
        // 通过hasMany方法建立一对多关系
        // Subject模型拥有多个Personnel模型的记录，通过 "subjectId" 字段与 Personnel 模型的 "id" 字段关联
        return $this->hasMany(Personnel::class, 'subjectId', 'id');
    }
}