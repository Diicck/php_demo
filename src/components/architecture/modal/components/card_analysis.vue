<template>
  <!-- 个人数据分析 -->
  <div class="card_analysis">
    <div class="card_text">
      <div class="card_text_img">
        <div class="card_header">
          <img src="@/assets/architecture/dialog/block_color.png" alt="" class="card_header_img" />
          <span class="card_header_text">个人数据分析</span>
        </div>
      </div>
      <div class="card_con">
        <div class="center_container" id="card_data_canvas"></div>
      </div>
    </div>
  </div>
</template>

<script>
import * as echarts from 'echarts';
export default {
  name: 'card-analysis',
  props: {
    data: {
      type: Object,
      default: null
    }
  },
  data() {
    return {};
  },
  methods: {
    handleInit() {
      if(!this._myChart) return;
      // 清除之前的配置
      this._myChart.clear();
      const option = {
        color: ['#7FD2FF', '#FFE434', '#56A3F1', '#FF917C'],
        legend: {},
        radar: [
          {
            indicator: [
              { text: '表达能力', max: 5, color: '#485872' },
              { text: '学习能力', max: 5, color: '#485872' },
              { text: '技术能力', max: 5, color: '#485872' },
              { text: '组织能力', max: 5, color: '#485872' },
              { text: '魅力值', max: 5, color: '#485872' }
            ],
            center: ['50%', '50%'],
            radius: 50,
            startAngle: 90,
            splitNumber: 4,
            // shape: "circle",
            // 外侧字体样式
            splitArea: {
              // 背景
              areaStyle: {
                color: ['#FAFDFF'],
                shadowBlur: 0
              }
            },
            // 中轴线
            axisLine: {
              lineStyle: {
                color: '#ADE4FF'
              }
            },
            // 圆圈线
            splitLine: {
              lineStyle: {
                color: '#ADE4FF'
              }
            }
          }
        ],
        series: [
          {
            type: 'radar',
            emphasis: {
              lineStyle: {
                width: 1
              }
            },
            data: [
              {
                // 数值
                value: [this.data.expressiveAbilityAvg, this.data.workAbilityAvg, this.data.skillAbilityAvg, this.data.organizationalAbilityAvg, this.data.charismaAvg],
                // 区域样式
                areaStyle: {
                  color: ' rgba(3, 169, 255, 0.5)'
                },
                // 线样式
                lineStyle: {
                  color: ' #03A9FF',
                  width: 1
                },
                // 项样式
                itemStyle: {
                  color: ' red',
                  opacity: 0
                }
              }
            ]
          }
        ]
      };
      option && this._myChart.setOption(option);
    }
  },
  mounted() {
    // 需要等Dom更新完毕加载 不然报错
    const chartDom = document.getElementById('card_data_canvas');
    const myChart = echarts.init(chartDom);
    this._myChart = myChart;
    window.addEventListener('resize', () => {
      this.handleInit();
    });
  },
  watch: {
    data: {
      handler() {
        this.handleInit();
      },
      deep: true
    }
  }
};
</script>

<style lang="scss" scoped>
.card_analysis {
  // 整体内容模块
  .card_text {
    position: relative;
    padding-left: 24px;
    margin: 45px 0;
    height: 180px;
    background: #ffffff;
    box-shadow: 0px 0px 8px 0px #ecf1f3;
    border-radius: 0 8px 8px 8px;
    z-index: 1;
    display: flex;
    align-items: center;
    .card_text_img {
      width: 241px;
      height: 31px;
      position: absolute;
      top: -20px;
      left: 0px;
      background: url('@/assets/architecture/dialog/dialog_top.png');
      background-repeat: no-repeat;
      // 左上角文字背景图片
      .card_header {
        position: relative;
        width: 100%;
        height: 100%;
        .card_header_img {
          position: absolute;
          bottom: 0;
          left: 16px;
        }
        .card_header_text {
          position: absolute;
          bottom: 0;
          left: 24px;
          font-size: 16px;
          font-weight: 500;
          line-height: 16px;
          color: #485872;
        }
      }
    }
    // 个人数据分析内容
    .card_con {
      display: flex;
      width: 100%;
      height: 100%;

      .center_container {
        width: 100%;
        height: 100%;
      }
    }
  }
}
</style>