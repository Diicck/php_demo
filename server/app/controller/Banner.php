<?php

namespace app\controller;

use hg\apidoc\annotation as Apidoc;

use app\BaseController;
use think\facade\Db;

/**
 * @Apidoc\Title("banner图")
 */
class Banner extends BaseController
{
    /**
     * @Apidoc\Title("获取banner列表")
     * @Apidoc\Desc("获取banner列表")
     * @Apidoc\Method("GET")
     * @Apidoc\ResponseSuccess("code", type="int", desc="业务编码")
     * @Apidoc\ResponseSuccess("message", type="string", desc="业务说明")
     * @Apidoc\ResponseSuccess("entity", type="object", desc="业务数据",main="true",children={
     *      @Apidoc\Returned("name", type="string", desc="姓名")
     * })
     */
    public function list()
    {
        // 获取 banner 表中 state=1 的数据 并 sort 排序
        $list = Db::table('banner')->where('state', 1)->order('sort')->select();
        return success("获取成功", $list->toArray());
        // SELECT * FROM banner WHERE state = 1 ORDER BY sort;
    }
}