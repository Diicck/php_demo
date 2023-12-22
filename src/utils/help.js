import config from "@/components/fish/data/config";

/**
 * 鱼骨图接口数据转组件数据
 */
export function handleFishboneApiDataToComponentData(entity, subjectData) {
    let milestonesList = entity.milestonesList;
    let list = [[[]], [[], []], [[]]];

    milestonesList.forEach((item) => {
        let arr = [];
        let desc = item.milestone;
        arr.push({
            type: config.map[desc.type],
            data: desc,
            milestone_type: desc.type

        });
        item.weekList.forEach((week) => {
            let weekId = week.id;
            let knowArr = item.knowList
                .filter((know) => know.weekId == weekId)
                .map((know) => {
                    return {
                        type: "know",
                        data: know,
                        milestone_type: desc.type
                    };
                });
            arr.push(...knowArr);

            arr.push({
                type: "week",
                data: week,
                milestone_type: desc.type
            });
        });
        let _list = null;
        switch (desc.type) {
            case 1:
                // 课程
                _list = list[0][0];
                break;
            case 2:
                // 项目
                _list = list[1][0];
                break;
            case 3:
                // 比赛
                _list = list[1][1];
                break;
            case 4:
                // 就业
                _list = list[2][0];
                break;
            default:
                break;
        }
        if (_list.length == 0) {
            if (desc.type == 1) {
                _list.push({
                    type: "start",
                    data: {
                        name: "理论开始",
                    },
                    milestone_type: desc.type
                });
            }
            _list.push(...arr);
            _list.push({
                type: "end",
                data: {
                    name: config.name[desc.type] + "结束",
                },
                milestone_type: desc.type
            });
        }
    });

    let map = {};
    for (let index in list) {
        let arr_1 = list[index];
        for (let index_1 in arr_1) {

            // 大节点 例如 课程 相关 就业
            const arr_2 = arr_1[index_1];
            let _left = 0;
            for (let index_2 in arr_2) {
                // 课程单点
                const arr_3 = arr_2[index_2];

                //  节点
                let configObj = config.node_config[arr_3.type] ?? {};
                let width = configObj.width ?? 0;
                let right = _left + width;
                if (index_2 < arr_2.length - 1) {
                    right = right + config.offset
                }
                arr_3.node = configObj;
                const bgColor = config.bgColor[arr_3.milestone_type];
                const theme = subjectData.theme ?? "#03a9f4";
                arr_3.style = {
                    left: _left,
                    right: right,
                    width: width,
                    bgColor: arr_3.milestone_type == 1 ? theme : bgColor
                };
                _left = right;
            }
            map[index + "_" + index_1] = Math.max(
                ...list[index][index_1].map((item) => {
                    return item.style.right;
                })
            );
        }

    }
    return {
        list, map
    }
}

/**
 * 加一个月  202312+1=202401
 */
function handleAddM(startIndex) {
    const str = String(startIndex);
    let y = str.slice(0, 4);
    let m = str.slice(4, 6);
    let value = [];
    if (m < 12) {
        let v = m * 1 + 1;
        m = v < 10 ? "0" + v : v;
        value = [y, m];
    } else {
        m = "01";
        y = y * 1 + 1;
        value = [y, m];
    }
    return parseInt(value.join(""));
}
/**
 * 人员统接口数据转组件数据
 */
export function handleMemberDataApiDataToComponentData(entity) {
    // x轴数据
    let xData = {};
    //  y轴数据
    let yData = {};
    //
    let yDataObj = {};
    // 专业数据对象结构 key:专业id value:专业数据
    let subjectObj = {};
    // 需要展示类型
    const TYPE_ARR = [1, 2, 5];
    // 对应类型下的配置 标题 颜色 单位
    const NAME_MAP = {
        5: {
            title: "学生人数（单位：人）",
            color: "#5AAEF3",
            unit: "人",
        },
        2: {
            title: "项目数量（单位：个）",
            color: "#62D9AD",
            unit: "个",
        },
        1: {
            title: "课程数量（单位：门）",
            color: "#5B6E96",
            unit: "门",
        },
    };
    // list-折线数据 subjectList-专业列表
    let { list, subjectList } = entity;
    // 专业数组结构 转成 对象结构
    subjectList.map((item) => {
        subjectObj[item.id] = item;
    });
    // 获取专业id数组 [专业id,专业id]
    let subjectIds = subjectList.map((item) => item.id);
    // 通过map获取全部的时间 组成数组
    let times = list.map((item) => item.time);
    // 获取最大时间
    let maxTime = Math.max(...times);
    // 获取最小时间
    let minTime = Math.min(...times);
    let _data = {};
    // 开始索引定位到最小时间位置
    let startIndex = minTime;
    let indexArr = [];
    // 循环递增时间
    while (startIndex <= maxTime) {
        indexArr.push(startIndex);
        // 获取下一个月的时间值
        startIndex = handleAddM(startIndex);
    }
    // indexArr 为 时间的数组

    indexArr.map((time) => {
        // 存储数据
        let data = {};
        // 类型 map
        TYPE_ARR.forEach((type) => {
            // 对应以存在的type下标 则不再创建
            if (!data[type]) {
                data[type] = {
                    // 专业
                    subject: {},
                    // 数量
                    count: 0,
                };
            }
            // 专业ids遍历
            subjectIds.forEach((subjectId) => {
                // 判断对应 data下 类型专业对象下 的专业id value 是否存在
                if (!data[type]["subject"][subjectId]) {
                    data[type]["subject"][subjectId] = [];
                }
                // 在list中找到对应类型 对应专业  对应时间的项
                let _list = list.filter((item) => {
                    return (
                        item.type == type &&
                        item.subjectId == subjectId &&
                        item.time == time
                    );
                });
                // 计算该专业下的数据 以及总数
                data[type]["subject"][subjectId] = {
                    list: _list,
                    // reduce es6 叠加器
                    count: _list.reduce((previousValue, currentValue) => {
                        return previousValue + currentValue.count;
                    }, 0),
                };
            });
            // 将对应专业下的对象数据 转成 数组数据
            const values = Object.values(data[type]["subject"]);
            // 计算 对应类型下的总数
            data[type]["count"] = values.reduce(
                (previousValue, currentValue) => {
                    return previousValue + currentValue.count;
                },
                0
            );
        });
        // 将对应时间的下的 数据 赋值到对应时间索引下
        _data[time] = data;
    });
    // x轴数据 对应为 _data下time key
    xData = Object.keys(_data);
    // 获取_data下value数组结构
    let values = Object.values(_data);

    // 通过类型数组map
    TYPE_ARR.map((type) => {
        // 得出 y轴的总值
        yData[type] = values.map((item) => {
            return item[type].count;
        });
        // 记录对应类型下 不同时间下的数据  key:专业类型 value:[{subject: {},count: 0},{subject: {},count: 0,}]
        yDataObj[type] = values.map((item) => {
            return item[type];
        });
    });
    let xAxisData = xData;
    let yAxisData = yData;

    // 设置 legendData 完善x轴echarts数据
    let legendData = TYPE_ARR.map((type) => {
        return {
            name: NAME_MAP[type].title,
            itemStyle: {
                color: NAME_MAP[type].color,
            },
            lineStyle: {
                color: "#fff",
            },
        };
    });
    // 设置 seriesData
    let seriesData = TYPE_ARR.map((type) => {
        return {
            name: NAME_MAP[type].title,
            type: "line",
            data: yAxisData[type],
            label: {
                show: true,
                formatter: `{c}${NAME_MAP[type].unit}`,
            },
            itemStyle: {
                color: NAME_MAP[type].color,
            },
            lineStyle: {
                color: NAME_MAP[type].color,
            },
            // 鼠标经过展示提示
            tooltip: {
                // 格式化处理
                formatter: (param) => {
                    let html = "<div>";
                    let dataIndex = param.dataIndex;
                    let subject = yDataObj[type][dataIndex].subject;
                    html += `<p>${NAME_MAP[type].title}</p>`;
                    for (let key in subject) {
                        html += `<div>${subjectObj[key].subjectName}: ${subject[key].count}</div>`;
                    }
                    html += "</div>";
                    return html;
                },
            },
        };
    });
    const option = {
        title: {
            text: "",
        },
        tooltip: {
            // item-在点上时提示
            trigger: "item",
        },
        legend: {
            data: legendData,
            bottom: "8px",
        },
        grid: {
            left: "2%",
            right: "4%",
            bottom: "5%",
            containLabel: true,
        },
        // x轴
        xAxis: {
            type: "category",
            boundaryGap: false,
            //   x轴数据
            data: xAxisData,
        },
        // y轴
        yAxis: {
            type: "value",
            show: false,
        },
        // 数据
        series: seriesData,
    };
    return option
}