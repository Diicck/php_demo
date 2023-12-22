import config from "@/components/fish/data/config.js";

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