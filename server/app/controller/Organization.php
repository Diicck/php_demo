<?php

namespace app\controller;

use hg\apidoc\annotation as Apidoc;

use app\BaseController;
use app\model\User;
use think\db\Query;

/**
 * @Apidoc\Title("组织结构")
 */
class Organization extends BaseController
{
    /**
     * @Apidoc\Title("获取人员架构")
     * @Apidoc\Desc("获取人员架构")
     * @Apidoc\Method("GET")
     * @Apidoc\ResponseSuccess("code", type="int", desc="业务编码")
     * @Apidoc\ResponseSuccess("message", type="string", desc="业务说明")
     * @Apidoc\ResponseSuccess("entity", type="object", desc="业务数据",children={
     *      @Apidoc\Returned("id", type="int", desc="主键"),
     *      @Apidoc\Returned("avatar", type="string", desc="头像地址"),
     *      @Apidoc\Returned("realName", type="string", desc="姓名"),
     *      @Apidoc\Returned("role", type="object", desc="角色" ,children={
     *          @Apidoc\Returned("id", type="int", desc="主键"),
     *          @Apidoc\Returned("level", type="string", desc="等级"),
     *          @Apidoc\Returned("name", type="string", desc="名称"),
     *      }),
     *      @Apidoc\Returned("childList", type="array", desc="子级", children={
     *         @Apidoc\Returned("id", type="int", desc="主键"),
     *         @Apidoc\Returned("avatar", type="string", desc="头像地址"),
     *         @Apidoc\Returned("realName", type="string", desc="姓名"),
     *         @Apidoc\Returned("role", type="object", desc="姓名" ,children={
     *             @Apidoc\Returned("id", type="int", desc="主键"),
     *             @Apidoc\Returned("level", type="string", desc="等级"),
     *             @Apidoc\Returned("name", type="string", desc="名称"),
     *         }),
     *        @Apidoc\Returned("childList", type="array", desc="子级", children={
     *             @Apidoc\Returned("item", type="array", desc="专业下人员", children={
     *                 @Apidoc\Returned("id", type="int", desc="主键"),
     *                 @Apidoc\Returned("avatar", type="string", desc="头像地址"),
     *                 @Apidoc\Returned("realName", type="string", desc="姓名"),
     *                 @Apidoc\Returned("role", type="object", desc="角色" ,children={
     *                         @Apidoc\Returned("id", type="int", desc="主键"),
     *                         @Apidoc\Returned("level", type="string", desc="等级"),
     *                         @Apidoc\Returned("name", type="string", desc="名称"),
     *                }),
     *             })
     *       }),
     *     }),
     * })
     */
    public function data()
    {
        // 查询角色等级level 1,2 的用户 以及 角色信息
        $user_lv1or2_list = User::hasWhere('role', function (Query $query) {
            $query->where('level', '<=', 2);
        })->with([
            'role',
            'subjects' => [
                'personnels' => ['role']
            ]
        ])->select()->toArray();

        // 找出对应等级为2的用户下的专业以及人员 注：lv为2的人员是专业负责人
        $user_lv2_ids = [];
        foreach ($user_lv1or2_list as $value) {
            if ($value['role']['level'] == 2) {
                $user_lv2_ids[] = $value['id'];
            }
        }

        // 组合数据
        $list = [];
        // 查询role 等级为1的人员
        $user_lv1  = [];
        $user_lv2  = [];
        foreach ($user_lv1or2_list as  $value) {
            if ($value['role']['level'] == 1) {
                $user_lv1 = $value;
            }
            if ($value['role']['level'] == 2) {
                $user_lv2[] = $value;
            }
        }
        foreach ($user_lv2 as $key => $value) {
            $personnels = [];
            foreach ($value['subjects'] as $value2) {
                $personnels[] = $value2['personnels'];
            }
            $user_lv2[$key]['childList'] = $personnels;
            unset($user_lv2[$key]['subjects']);
        }

        $user_lv1['childList'] = $user_lv2;
        $list = $user_lv1;
        return success("获取成功", $list);
    }
}
