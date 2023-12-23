/**
 * 衣服的配置文件
 */

let data = {
    // 男：
    // 1.头部
    // 2.表情
    // 3.发型
    // 4.衬衣
    // 5.手臂
    // 6.裤子
    // 7.鞋子

    // 女：
    // 1.头部
    // 2.表情
    // 3.衬衣
    // 4.裤子
    imageData: {
        // 男
        1: {
            base: [
                // 5412367
                {
                    // 手臂
                    type: 5,
                    img: require("@/assets/architecture/dialog/attire/1/手臂.png")
                },
                {
                    // T恤
                    type: 4,
                    img: require("@/assets/architecture/dialog/attire/1/T恤.png")
                },
                {
                    // 脸型
                    type: 1,
                    img: require("@/assets/architecture/dialog/attire/1/脸型.png")
                },

                {
                    // 颓废表情
                    type: 2,
                    img: require("@/assets/architecture/dialog/attire/1/颓废表情.png")
                },
                {
                    // 发型
                    type: 3,
                    img: require("@/assets/architecture/dialog/attire/1/敦厚发型.png")
                },
                {
                    // 休闲鞋
                    type: 7,
                    img: require("@/assets/architecture/dialog/attire/1/休闲鞋.png")
                },
                {
                    // 裤子原始
                    type: 6,
                    img: require("@/assets/architecture/dialog/attire/1/裤子原始.png")
                },

                {
                    // 领带
                    type: 8,
                    img: null
                },
                {
                    // 上衣
                    type: 9,
                    img: null
                }
            ],
            data: {
                "帅气发型": {
                    type: 3,
                    img: require("@/assets/architecture/dialog/attire/1/帅气发型.png")
                },
                "衬衣": {
                    type: 4,
                    img: require("@/assets/architecture/dialog/attire/1/衬衣.png")
                },
                "西服上衣": {
                    type: 9,
                    img: require("@/assets/architecture/dialog/attire/1/西服上衣.png")
                },
                "西服裤子": {
                    type: 6,
                    img: require("@/assets/architecture/dialog/attire/1/西服裤子.png")
                },
                "皮鞋": {
                    type: 7,
                    img: require("@/assets/architecture/dialog/attire/1/皮鞋.png")
                },
                "开朗表情": {
                    type: 2,
                    img: require("@/assets/architecture/dialog/attire/1/开朗表情.png")
                },
                "领带": {
                    type: 8,
                    img: require("@/assets/architecture/dialog/attire/1/领带.png")
                },
            }
        },
        // 女
        0: {
            base: [
                // 5412367
                {
                    // 换装上衣
                    type: 1,
                    img: require("@/assets/architecture/dialog/attire/0/换装上衣.png")
                },
                {
                    // 头部
                    type: 5,
                    img: require("@/assets/architecture/dialog/attire/0/头部.png")
                },
                {
                    // 原表情
                    type: 2,
                    img: require("@/assets/architecture/dialog/attire/0/原表情.png")
                },
                {
                    // 原裙子
                    type: 3,
                    img: require("@/assets/architecture/dialog/attire/0/原裙子.png")
                },
                {
                    // 耳饰
                    type: 4,
                    img: null
                },
                {
                    // 腰带
                    type: 6,
                    img: null
                },
                {
                    // 手表
                    type: 7,
                    img: null
                },
                {
                    // logo
                    type: 8,
                    img: null
                },
            ],
            data: {
                "换装上衣": {
                    type: 1,
                    img: require("@/assets/architecture/dialog/attire/0/换装上衣.png")
                },
                "换装裙子带原双腿": {
                    type: 3,
                    img: require("@/assets/architecture/dialog/attire/0/换装裙子带原双腿.png")
                },
                "换装鞋带换装裙子": {
                    type: 3,
                    img: require("@/assets/architecture/dialog/attire/0/换装鞋带换装裙子.png")
                },
                "换装表情": {
                    type: 2,
                    img: require("@/assets/architecture/dialog/attire/0/换装表情.png")
                },
                "耳饰": {
                    type: 4,
                    img: require("@/assets/architecture/dialog/attire/0/耳饰.png")
                },
                "换装腰带": {
                    type: 6,
                    img: require("@/assets/architecture/dialog/attire/0/换装腰带.png")
                },
                "手表": {
                    type: 7,
                    img: require("@/assets/architecture/dialog/attire/0/手表.png")
                },
                "原彩logo": {
                    type: 7,
                    img: require("@/assets/architecture/dialog/attire/0/原彩logo.png")
                },
            }
        },
    }

}
export default data