<?php

namespace app\controller;

use hg\apidoc\annotation as Apidoc;

use app\BaseController;
use app\model\Week;
use think\db\Query;
use think\facade\Db;

/**
 * @Apidoc\Title("鱼骨图")
 */
class FishBone extends BaseController
{
    /**
     * @Apidoc\Title("通过专业ID获取鱼骨图")
     * @Apidoc\Desc("通过专业ID获取鱼骨图")
     * @Apidoc\Method("GET")
     * @Apidoc\Query("subjectId", type="int",require=true, desc="专业id")
     * @Apidoc\ResponseSuccess("code", type="int", desc="业务编码")
     * @Apidoc\ResponseSuccess("message", type="string", desc="业务说明")
     * @Apidoc\ResponseSuccess("entity", type="object", desc="业务数据",main="true",children={
     *      @Apidoc\Returned("name", type="string", desc="姓名")
     * })
     */
    public function data()
    {
        // 获取get请求对象中专业id
        $subjectId = $this->request->get('subjectId');
        // 获取该专业下的里程碑列表 toArray:将对象数组转为数组
        $milestone_list = Db::table('milestone')->where('subjectId', $subjectId)->select()->toArray();
        // 方法 搭配 array_map 使用
        $func = function ($item) {
            return $item['id'];
        };
        // 获取里程碑列表 得到历程id的列表
        $milestone_ids = array_map($func, $milestone_list);
        // 里程碑外键key
        $milestone_id_key = 'milestoneId';
        // 查询知识点列表
        $know_list =  Db::table('know')->whereIn($milestone_id_key, $milestone_ids)->select();

        $milestone_know_map = [];
        // 遍历知识点列表 进行里程碑id进行分组
        foreach ($know_list as $value) {
            $milestone_id = $value[$milestone_id_key];
            if (!array_key_exists($milestone_id, $milestone_know_map)) {
                $milestone_know_map[$milestone_id] = [];
            }
            $milestone_know_map[$milestone_id][] = $value;
        }

        // 查询周 或 月 并关联查询对应的人员
        $week_list =  Week::whereIn($milestone_id_key, $milestone_ids)
            ->with(['weekreports' => function (Query $query) {
                $query->with('personnel');
            }])
            ->select()->toArray();
        $func2 = function ($item) {
            return $item['personnel'];
        };
        $milestone_week_map = [];
        // 遍历周数据列表 进行里程碑id分组
        foreach ($week_list as $value) {
            $milestone_id = $value[$milestone_id_key];
            if (!array_key_exists($milestone_id, $milestone_week_map)) {
                $milestone_week_map[$milestone_id] = [];
            }
            $value['personnelList'] = array_map($func2, $value['weekreports']);
            unset($value['weekreports']);
            $milestone_week_map[$milestone_id][] = $value;
        }

        $list = [];
        // 遍历里程碑 将对应里程碑下的知识点和周数据进行合并
        foreach ($milestone_list as $value) {
            $milestone_id = $value['id'];
            $list[] = [
                "milestone" => $value,
                "knowList" =>  array_key_exists($milestone_id, $milestone_know_map) ? $milestone_know_map[$milestone_id] : [],
                "weekList" =>  array_key_exists($milestone_id, $milestone_week_map) ? $milestone_week_map[$milestone_id] : []
            ];
        }
        return success("获取成功", ['milestonesList' => $list]);
    }
}
