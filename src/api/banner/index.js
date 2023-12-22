// 导入request方法
import { request } from "@/utils/axios";

// 向外共享getBannerList方法，此方法使用 request 方法发送网络请求。
export function getBannerList() {
    return request({
        method: 'get', // 请求方法
        data: {},// 携带的参数
        url: '/banner/list' // 请求的地址
    })
}