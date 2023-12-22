import { request } from '@/utils/axios.js'

/**
 * 获取折线图
 */
export function getChartData() {
    return request({
        url: '/chart/data',
        method: 'GET',
        data: {}
    })
}