<?php

namespace app\model;

use think\Model;

class Weekreport extends Model
{
    // 模型对应的数据表名称
    protected $name = 'weekreport';

    // 定义Weekreport模型与Personnel模型的属于关系
    public function personnel()
    {
        // 通过belongsTo方法建立属于关系
        // Weekreport模型属于一个Personnel模型，通过 "personnelId" 字段与 Personnel 模型的 "id" 字段关联
        return $this->belongsTo(Personnel::class, "personnelId");
    }
}