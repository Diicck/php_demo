<template>
  <div class="member-data-container">
    <!-- 标题区域 -->
    <div class="header-container">
      <TitleComponent :icon="require('@/assets/member-data/icon.png')" title="成员数据详情" sub-title="Member Data Details" />
    </div>
    <!-- 折线图区域 -->
    <div class="center-container" id="member-data-canvas"></div>
  </div>
</template>

<script >
import TitleComponent from '@/components/title-component/index.vue';
import * as echarts from 'echarts';

import { getChartData } from '@/api/chart/index.js';
import { handleMemberDataApiDataToComponentData } from '@/utils/help';
const DEFAULT_OPTION = {};
export default {
  name: 'member-data',
  data() {
    return {

    };
  },
  components: {
    TitleComponent
  },
  methods: {
    /**
     *  设置画布数据
     */
    hadnleSetOption() {
      let option = this.option ? this.option : DEFAULT_OPTION;
      // 清空画布
      option && this._myChart.clear();
      //   设置图形数据
      option && this._myChart.setOption(option);
    },

    /**
     * 加载数据
     */
    async handleLoadData() {
      let res = await getChartData();
      if (res.code !== 200) {
        return;
      }
      if (!res.entity) {
        return;
      }
      /**
       * 接口数据结构转换成echarts数据结构
       */
      this.option = handleMemberDataApiDataToComponentData(res.entity);
      this.hadnleSetOption();
    }
  },
  mounted() {
    // 获取dom
    const chartDom = document.getElementById('member-data-canvas');
    // echarts 初始化
    const myChart = echarts.init(chartDom);
    this._myChart = myChart;
    // 设置 echarts  Option
    this.hadnleSetOption();
    // 加载数据
    this.handleLoadData();
    // 监听窗口大小变化
    window.addEventListener('resize', () => {
      // 设置 echarts  Option
      this.hadnleSetOption();
    });
  }
};
</script>

<style lang="scss" scoped>
.member-data-container {
  min-width: 1200px;
  max-width: 1920px;
  margin: 0 auto;
  padding: 0 40px;
  box-sizing: border-box;

  .header-container {
    display: flex;
    justify-content: center;
    padding-top: 72px;
    padding-bottom: 40px;
    box-sizing: border-box;
  }

  .center-container {
    width: 100%;
    height: 720px;
    background-color: #f8f8f8;
    box-sizing: border-box;
    border-radius: 8px;
  }
}
</style>