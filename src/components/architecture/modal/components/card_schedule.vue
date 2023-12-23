<template>
  <!-- 课程进度 -->
  <div class="card-schedule">
    <div class="card-center-all">
      <div class="card-text-img">
        <div class="card-header">
          <img src="@/assets/architecture/dialog/block_color.png" alt="" class="card-header-img" />
          <span class="card-header-text">课程进度</span>
          <div class="card-header-react">
            <span class="card-header-react-schedule">
              {{ completeLength }}/{{
                currentItems ? currentItems.length : 0
              }}</span>

            <span class="card-header-react-rectangle" v-for="(item, index) in currentItems ? currentItems.length : 0" :class="
                completeLength >= index + 1
                  ? 'card-header-react-rectangle_active'
                  : 'card-header-react-rectangle'
              " :key="index"></span>
          </div>
        </div>
      </div>
      <div class="card-centent">
        <div class="card-top">
          <div class="card-top-item" v-for="(itemCenter, index) in currentItems" :key="index">
            <img :src="itemCenter.icon" alt="" :class="itemCenter.isPass != 1 ? 'projectImg-Noactive' : ''" />
            <span>{{ itemCenter.milestoneName }}</span>
          </div>
        </div>

        <div class="card-pagomatopm" v-if="data ? data.length >= 8 : 0">
          <span v-for="(item, index) in lengthcircle" :key="index" :class="activeIndex == index ? 'circle_active' : 'circle'" @click="nextPage(index)"></span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'card-schedule',
  props: {
    data: {
      type: Array,
      default: null
    }
  },
  data() {
    return {
      currentPage: 1, // 当前第几页
      pageSize: 8, // 每页显示的数量
      activeIndex: 0 // 默认的索引
    };
  },
  computed: {
    // 计算分页
    currentItems() {
      if (this.data) {
        const start = (this.currentPage - 1) * this.pageSize;
        const end = start + this.pageSize;
        return this.data.slice(start, end);
      } else {
        return [];
      }
    },
    // 计算完成的数量
    completeLength() {
      if (this.data) {
        return this.currentItems.filter(item => item.isPass === 1).length;
      } else {
        return 0;
      }
    },
    // 计算切换状态
    lengthcircle() {
      if (this.data) {
        return Math.floor((this.data.length - 1) % 8);
      } else {
        return 0;
      }
    }
  },
  methods: {
    nextPage(index) {
      if (this.currentPage >= 1) {
        this.currentPage = index + 1;
        this.activeIndex = index;
      }
    }
  }
};
</script>

<style lang="scss" scoped>
.card-schedule {
  // 整体内容模块
  .card-center-all {
    position: relative;
    width: 100%;
    height: 283px;
    background-color: #ffffff;
    padding: 35px 24px 0 24px;
    box-shadow: 0px 0px 8px 0px #ecf1f3;
    border-radius: 0 8px 8px 8px;
    display: flex;
    align-content: center;
    flex-wrap: wrap;
    box-sizing: border-box;
    .card-text-img {
      width: 241px;
      height: 31px;
      position: absolute;
      top: -20px;
      left: 0px;
      background: url('@/assets/architecture/dialog/dialog_top.png');
      background-repeat: no-repeat;
      .card-header {
        position: relative;
        width: 100%;
        height: 100%;
        .card-header-img {
          position: absolute;
          bottom: 0;
          left: 16px;
        }
        .card-header-text {
          position: absolute;
          bottom: 0;
          left: 24px;
          font-size: 16px;
          font-weight: 500;
          line-height: 16px;
          color: #485872;
        }
        .card-header-react {
          position: absolute;
          bottom: 0;
          left: 107px;
          display: flex;
          align-items: flex-end;
          .card-header-react-schedule {
            font-size: 12px;
            line-height: 14px;
            color: #485872;
            margin-right: 4px;
          }
          .card-header-react-rectangle {
            width: 2px;
            height: 7px;
            border-radius: 1px;
            display: block;
            background: #d8d8d8;
            margin-left: 3px;
          }
          // 完成项目显示的颜色
          .card-header-react-rectangle_active {
            background: #03a9ff;
          }
        }
      }
    }
    // 课程进度内容
    .card-centent {
      width: 100%;
      height: 100%;
      display: flex;
      flex-wrap: wrap;
      flex-direction: column;
      justify-content: space-between;
      box-sizing: border-box;
      .card-top {
        width: 100%;
        display: flex;
        flex: 12;
        flex-wrap: wrap;
      }
      .card-top-item {
        width: 72px;
        height: 92px;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        align-items: center;
        margin-right: 16px;
        .projectImg-Noactive {
          filter: grayscale(100%);
        }
        img {
          width: 72px;
          height: 72px;
          display: block;
        }
        span {
          width: 100%;
          overflow: hidden;
          text-wrap: normal;
          text-overflow: ellipsis;
          white-space: nowrap;
          text-align: center;
          font-size: 12px;
          text-align: center;
          color: #485872;
          .card-header {
            position: relative;
            width: 100%;
            height: 100%;
            .card-header-img {
              position: absolute;
              bottom: 0;
              left: 16px;
            }
            .card-header-text {
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
      }
      .card-top-item:nth-child(4n) {
        margin-right: 0;
      }
      // 底部按钮
      .card-pagomatopm {
        width: 100%;
        text-align: center;
        display: flex;
        flex: 1;
        justify-content: center;
        .circle_active {
          display: block;
          width: 24px;
          height: 4px;
          border-radius: 8px;
          opacity: 1;
          margin-left: 4px;
          cursor: pointer;
          background: #03a9ff;
        }
        .circle {
          display: block;
          width: 8px;
          height: 4px;
          border-radius: 8px;
          opacity: 1;
          cursor: pointer;
          margin-left: 4px;
          background: #cccccc;
        }
      }
    }
  }
}
</style>