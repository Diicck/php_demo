<?php

namespace app\model;

use think\Model;

class Week extends Model
{
    // 模型对应的数据表名称
    protected $name = 'week';

    // 定义Week模型与Weekreport模型的一对多关系
    public function weekreports()
    {
        // 通过hasMany方法建立一对多关系
        // Week模型拥有多个Weekreport模型的记录，通过 "weekId" 字段与 "id" 字段关联
        return $this->hasMany(Weekreport::class, "weekId", "id");
    }
}
