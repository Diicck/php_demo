<template>
  <div class="fish-container">
    <div class="fish-content">
      <!-- tabbar -->
      <TabBar class="fish-tabBar" @change="handleTabChange"></TabBar>
      <!-- 内容区域 -->
      <div class="fish-component">
        <!-- 左侧区域 -->
        <div class="left-container">
          <span class="fish-left-img" :style="{ backgroundColor: themBgColor }"></span>
          <div class="icon-container">
            <img :src="currentData.cover" alt="" class="icon-img" />
          </div>
          <div class="text-container" :style="{ backgroundColor: themBgColor }">
            <span> {{ currentData.subjectName }} </span>
            <p>{{ currentData.info }}</p>
          </div>
        </div>
        <div class="right-container">
          <!-- 鱼骨图组件 -->
          <FishboneComponent :list="fishboneData.list" :map="fishboneData.map" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
// 获取鱼骨数据
import { getFishbone } from '@/api/fish/index.js';
// 导入TabBar
import TabBar from '@/components/fish/components/tab-bar.vue';
import { handleFishboneApiDataToComponentData } from '@/utils/help';
import FishboneComponent from '@/components/fish/components/fishbone.vue';
export default {
  name: 'fish-component',
  data() {
    return {
      // 鱼骨图数据
      fishboneData: {
        list: [],
        map: {}
      },
      // 当前专业信息
      currentData: {},
      // 主体色
      themBgColor: ''
    };
  },
  methods: {
    /**
     * 滚动视图
     */
    handleJumpNext(bool = true) {
      this.$refs['finshContent'].scrollBy({
        left: bool ? 1600 : -1600,
        behavior: 'smooth'
      });
    },
    /**
     * 专业列表切换回调
     * @param {*} item
     */
    async handleTabChange(item) {
      this.$set(this, 'currentData', item);
      this.handleGetFishboneData(item.id);

      this.themBgColor = item.theme;
    },
    /**
     *  获取鱼骨图数据
     */
    async handleGetFishboneData(subjectId) {
      this.fishboneData.list = [];
      this.fishboneData.map = {};
      let res = await getFishbone(subjectId);
      if (res.code != 200) {
        return;
      }

      let { list, map } = handleFishboneApiDataToComponentData(res.entity, this.currentData);
      this.$set(this.fishboneData, 'list', list);
      this.$set(this.fishboneData, 'map', map);
    }
  },
  components: {
    TabBar,
    FishboneComponent
  }
};
</script>

<style lang="scss" scoped>
.fish-container {
  width: 100%;
  .fish-content {
    position: relative;
    box-sizing: border-box;
    width: 100%;
    // tabbar样式
    .fish-tabBar {
      margin-top: 64px;
      display: flex;
      justify-content: center;
    }
    // 左侧开始
    .fish-component {
      min-width: 1200px;
      width: 100%;
      height: 1100px;
      overflow: hidden;
      display: flex;
      position: relative;
      margin-bottom: 49px;
      padding: 0 15px;
      box-sizing: border-box;
      // 左侧容器
      .left-container {
        position: relative;

        width: 319px;
        flex-shrink: 0;
        .fish-left-img {
          display: block;
          width: 319px;
          height: 1100px;
          border-radius: 32px 0px 0px 32px;
          opacity: 0.8;
        }
        .icon-container {
          width: 520px;
          height: 594px;
          position: absolute;
          bottom: 0;

          .icon-img {
            width: 332px;
            height: 378px;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            opacity: 0.4;
          }
        }

        .text-container {
          position: absolute;
          top: 100px;
          left: 0;
          width: 100%;
          display: flex;
          flex-direction: column;
          padding: 16px 0;
          box-sizing: border-box;

          span {
            font-size: 36px;
            font-weight: 900;
            color: #ffffff;
            margin-left: 24px;
          }

          p {
            font-size: 18px;
            font-weight: 500;
            color: #ffffff;
            margin: 8px 0 0 24px;
          }
        }
      }
      // 左侧结束
      //   右侧容器
      .right-container {
        width: calc(100% - 319px);
        flex-shrink: 0;
        border-radius: 0 32px 32px 0;
        overflow: hidden;
      }
    }
  }
}
</style>