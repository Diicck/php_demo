import { request } from "@/utils/axios";

// 获取人员架构
export function getFindOrganization() {
    return request({
        url: '/organization/data',
        method: 'get',
        data: {}
    })
}
// 展示员工信息卡 hover
export function getPersonnelSimpleInfo(id) {
    return request({
        url: `/personnel/simpleInfo?id=${id}`,
        method: 'get',
        data: {}
    })
}