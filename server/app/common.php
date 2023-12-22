<?php
// 应用公共文件
use think\Response;

/**
 * 生成结果
 * @param  int $code code码
 * @param  string $message 消息内容
 * @param  string $data 返回数据主体
 */
function make(int $code, string $message, ?array $data = null): Response
{
    $request = app()->request;
    $res = compact('code', 'message');
    // 是否不null
    if (!is_null($data)) {
        // 判断数据是否是索引数组
        if (is_array($data) && array_keys($data)[0] === 0) {
            $res['entityList'] = $data;
        } else {
            $res['entity'] = $data;
        }
    }
    // 生成响应输出基础类数据
    return Response::create($res, 'json', $code);
}

/**
 * 成功返回
 * @param  int $code code码
 * @param  string $message 消息内容
 * @param  string $data 返回数据主体
 */
function success($message = 'ok', ?array $data = null): Response
{
    return make(200, $message, $data);
}

/**
 * 成功返回
 * @param  string $message 消息内容
 * @param  string $data 返回数据主体
 * @param  int $code code码
 */
function error($msg = 'error', ?array $data = null, $code = 400): Response
{
    return make($code, $msg, $data);
}
