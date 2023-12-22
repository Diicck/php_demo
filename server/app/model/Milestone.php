<?php

namespace app\model;

use think\Model;

class Milestone extends Model
{
    protected $name = 'milestone';
    // 设置字段自动转换类型
    protected $type = [
        'startTime'       => 'datetime',
        'endTime'       => 'datetime',
    ];
}