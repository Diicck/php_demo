<template>
  <div class="architecture-line">
    <div class="main">
      <!-- 中线 -->
      <span class="center-line"></span>
      <!-- 横线 -->
      <span class="horizontal-line" :style="horizontal_line_style"></span>
      <!-- 子线 -->
      <span class="sub-line" v-for="(item, index) in sub_line_style" :key="index" :style="item"></span>
    </div>
  </div>
</template>

<script>
/**
 * 组织结构线组件
 */
export default {
  name: 'architecture-line',
  props: {
    /**
     * 比例
     * 默认模式下为计算占比 例如 1,2,1 这就是分成四份
     * 自定义模式下为指定占比 例如:0,50,100 则代表三个点位置 0% 50% 100%
     */
    scale: {
      default: () => [1, 1],
      type: Array
    },
    /**
     * 模式 default-默认 custom-自定义
     */
    mode: {
      default: 'default',
      type: String
    }
  },
  computed: {
    /**
     * 总数 为总份数 主要用于默认模式
     */
    count() {
      let arr = this.scale.filter(item => item != null);
      let count = arr.reduce((total, currentValue) => {
        return total + currentValue;
      }, 0);
      return arr.length == 0 ? 0 : count;
    },
    /**
     * 子线样式
     */
    sub_line_style() {
      let arr = [];
      let num = 0;
      for (let i in this.scale) {
        let item = this.scale[i];
        if (item == null) {
          continue;
        }
        let left = 0;
        if (this.mode == 'default') {
          left = ((num + item / 2) / this.count) * 100;
        } else if (this.mode == 'custom') {
          left = item;
        }
        arr.push({
          left: `${left}%`
        });
        num = num + item;
      }
      return arr;
    },
    /**
     * 横线样式
     */
    horizontal_line_style() {
      let scale = this.scale.filter(item => item != null);

      let index_start = scale[0];
      let index_end = scale[scale.length - 1];
      let width = ((this.count - index_start / 2 - index_end / 2) / this.count) * 100;
      let left = (index_start / 2 / this.count) * 100;
      if (this.mode == 'custom') {
        width = index_end - index_start;
        left = index_start;
      }
      if (scale.length == 0) {
        return {
          width: `${width}%`,
          left: `${left}%`
        };
      }
      return {
        width: `${width}%`,
        left: `${left}%`
      };
    }
  }
};
</script>

<style lang="scss" scoped>
.architecture-line {
  --line-color: #3691ff;
  --line-opacity: 1;
  width: 100%;
  height: 100%;
  position: relative;
  margin-top: 8px;

  .main {
    width: 100%;
    height: 100%;
    position: relative;

    .center-line {
      position: absolute;
      height: 50%;
      width: 2px;
      top: 0;
      left: 50%;
      transform: translateX(-1px);
      background-color: var(--line-color);
      opacity: var(--line-opacity);
      border-radius: 2px;
    }

    .horizontal-line {
      position: absolute;
      height: 2px;
      border-radius: 2px;
      top: 50%;
      transform: translateY(-1px);
      background-color: var(--line-color);
      opacity: var(--line-opacity);
    }

    .sub-line {
      position: absolute;
      height: 50%;
      width: 2px;
      top: 50%;
      background-color: var(--line-color);
      opacity: var(--line-opacity);
      border-radius: 2px;
      transform: translateX(-1px) translateY(-1px);
    }
  }

  .line-2 {
    width: 100%;
    height: 100%;
    position: relative;

    .center-line {
      position: absolute;
      height: 50%;
      width: 2px;
      top: 0;
      left: 50%;
      transform: translateX(-1px);
      background-color: var(--line-color);
      border-radius: 2px;
    }

    .horizontal-line {
      position: absolute;
      width: 50%;
      height: 2px;
      border-radius: 2px;
      left: 25%;
      top: 50%;
      transform: translateY(-1px);
      background-color: var(--line-color);
    }

    .sub-line {
      position: absolute;
      height: 50%;
      width: 2px;
      top: 50%;
      background-color: var(--line-color);
      border-radius: 2px;
    }

    .left {
      left: 25% !important;
      transform: translateX(-1px) translateY(-1px);
    }

    .right {
      right: 25% !important;
      transform: translateX(1px) translateY(-1px);
    }
  }

  .line-3 {
    width: 100%;
    height: 100%;
    position: relative;

    .center-line {
      position: absolute;
      height: 100%;
      width: 2px;
      top: 0;
      left: 50%;
      transform: translateX(-1px);
      background-color: var(--line-color);
      border-radius: 2px;
    }

    .horizontal-line {
      position: absolute;
      width: 67%;
      height: 2px;
      border-radius: 2px;
      left: 16.5%;
      top: 50%;
      transform: translateY(-1px);
      background-color: var(--line-color);
    }

    .sub-line {
      position: absolute;
      height: 50%;
      width: 2px;
      top: 50%;
      background-color: var(--line-color);
      border-radius: 2px;
    }

    .left {
      left: 16.5% !important;
    }

    .right {
      right: 16.5% !important;
    }
  }
}
</style>