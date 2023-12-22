import { request } from "@/utils/axios";

// 获取人员架构
export function getFindOrganization() {
    return request({
        url: '/organization/data',
        method: 'get',
        data: {}
    })
}