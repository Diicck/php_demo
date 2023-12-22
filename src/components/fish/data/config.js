export default {
    offset: 104,
    node_config: {
        "start": {
            component: "StartComponent",
            width: 288
        },
        "project": {
            component: "ProJectComponent",
            width: 270
        },
        "competition": {
            component: "ProJectComponent",
            width: 270
        },
        "job": {
            component: "ProJectComponent",
            width: 270
        },
        "course": {
            component: "RectangleComponent",
            width: 270
        },
        "know": {
            component: "NodeComponent",
            width: 0
        },
        "week": {
            component: "nodePointComponent",
            width: 0
        },
        "end": {
            component: "EndComponent",
            width: 140
        },


    },
    map: {
        1: "course",
        2: "project",
        3: "competition",
        4: "job",
    },
    bgColor: {
        1: "",
        2: "#4589D8",
        3: "#2CA0A1",
        4: "#4589D8",
    },
    name: {
        1: "课程",
        2: "项目",
        3: "比赛",
        4: "就业",
    },
}