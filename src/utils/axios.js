// 导入Axios库
import axios from 'axios'

// 定义API的基础URL
const baseUrl = '/api';

// 创建一个Axios实例r，设置基础URL和超时时间为5秒
export const r = axios.create({
    baseURL: baseUrl,
    timeout: 5000
})

// 在Axios实例r的响应拦截器中，处理响应数据
r.interceptors.response.use(function (response) {
    // 返回响应数据的内容部分
    return response.data;
}, function (error) {
    // 如果请求发生错误，返回一个Promise对象，并传递错误信息
    return Promise.reject(error);
});

// 定义一个名为request的函数，用于发送HTTP请求
export function request(config) {
    // 如果请求的方法是GET，则将请求数据(config.data)作为URL参数(config.params)发送
    if (config.method === 'get' || config.method === 'GET') {
        config.params = config.data;
    }
    // 发送HTTP请求，并返回一个Promise对象
    return r.request(config)
}