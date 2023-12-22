<?php

namespace app\controller;

use hg\apidoc\annotation as Apidoc;

use app\BaseController;
use app\model\Milestone;
use app\model\Subject;
use think\facade\Db;

/**
 * @Apidoc\Title("折线图")
 */
class Chart extends BaseController
{
    /**
     * @Apidoc\Title("获取折线图数据")
     * @Apidoc\Desc("获取折线图数据")
     * @Apidoc\Method("GET")
     * @Apidoc\ResponseSuccess("code", type="int", desc="业务编码")
     * @Apidoc\ResponseSuccess("message", type="string", desc="业务说明")
     * @Apidoc\ResponseSuccess("entity", type="object", desc="业务数据",main="true",children={
     *     @Apidoc\Returned("subjectList",type="array",desc="专业列表",children={
     *          @Apidoc\Returned("id", type="int", desc="主键"),
     *          @Apidoc\Returned("cover", type="string", desc="封面"),
     *          @Apidoc\Returned("coverActive", type="string", desc="封面 激活状态"),
     *          @Apidoc\Returned("subjectName", type="number", desc="专业名称"),
     *          @Apidoc\Returned("time", type="string", desc="时间 例如：202301"),
     *          @Apidoc\Returned("theme", type="string", desc="主色"),
     *     }),
     *     @Apidoc\Returned("list", type="array", desc="数据列表",children={
     *          @Apidoc\Returned("id", type="int", desc="主键"),
     *          @Apidoc\Returned("subjectId", type="int", desc="专业id"),
     *          @Apidoc\Returned("count", type="number", desc="数量"),
     *          @Apidoc\Returned("time", type="string", desc="时间 例如：202301"),
     *          @Apidoc\Returned("type", type="string", desc="类型"),
     *     })
     * })
     */
    public function data()
    {
        // 查询里程牌 最小开始时间
        $startData = Milestone::where('state', 1)->order('startTime')->find();
        // 查询里程碑  最大结束时间
        $endData = Milestone::where('state', 1)->order('endTime', 'desc')->find();
        if (!$startData['startTime'] || !$endData['endTime']) {
            return error("获取失败", []);
        }
        // 去除最小时间
        $startTime = $startData['startTime'];
        // 去除最大时间
        $endTime = $endData['endTime'];

        // 格式化时间 获取年月 例如：20231011 12:12 得出202310
        // 最小时间的年月
        $month_start =  date("Ym", strtotime($startTime));
        // 最大时间的年月
        $month_end = date("Ym", strtotime($endTime));

        // 获取记录表在 month_start 与 month_end 之间，类型是： 1-课程 2-项目 5-比赛 的记录
        $list =  Db::table('log')
            ->where('time', '>=', (int)$month_start)
            ->where('time', '<=', (int)$month_end)
            ->whereIn('type', ["1", "2", "5"])
            ->select()->toArray();
        // 获取 state=1(正常状态) 的专业列表
        $subjectList = Subject::where('state', 1)->select();
        return success("获取成功", [
            "list" => $list,
            "subjectList" => $subjectList
        ]);
    }
}
