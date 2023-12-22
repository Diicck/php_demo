<?php


namespace app\controller;

use hg\apidoc\annotation as Apidoc;

use app\BaseController;
use think\facade\Db;

/**
 * @Apidoc\Title("专业")
 */
class Subject extends BaseController
{
    /**
     * @Apidoc\Title("获取专业列表")
     * @Apidoc\Desc("获取专业列表")
     * @Apidoc\Method("GET")
     * @Apidoc\ResponseSuccess("code", type="int", desc="业务编码")
     * @Apidoc\ResponseSuccess("message", type="string", desc="业务说明")
     * @Apidoc\ResponseSuccess("entity", type="object", desc="业务数据",main="true",children={
     *      @Apidoc\Returned("name", type="string", desc="姓名")
     * })
     */
    public function list()
    {
        $list = Db::table('subject')->where('state', 1)->select();
        return success("获取成功", $list->toArray());
    }
}