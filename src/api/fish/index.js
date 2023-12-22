import { request } from '@/utils/axios.js'

// tabBar 专业查询
export function getfindSubjectList() {
    return request({
        url: '/subject/list',
        method: 'GET',
        data: {}
    })
}

// 根据专业ID查询具体内容
export function getFishbone(params) {
    return request({
        url: `/fishbone/data?subjectId=${params}`,
        method: 'GET',
        data: {},
    })
}