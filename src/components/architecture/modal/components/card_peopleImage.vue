<template>
  <!-- 人物形象 -->
  <div class="card-people-image">
    <div class="card-text-img">
      <div class="card-header">
        <img src="@/assets/architecture/dialog/block_color.png" alt="" class="card-header-img" />
        <span class="card-header-text">个人形象人物</span>
      </div>
    </div>
    <div class="people-boy" v-for="(item, index) in data" :key="index">
      <img class="center" :src="item.img" />
    </div>
  </div>
</template>

<script>
export default {
  name: 'card-people-image',
  props: {
    data: { type: Array, default: () => [] }
  },
  data() {
    return {};
  }
};
</script>

<style lang="scss" scoped>
.card-people-image {
  position: relative;
  height: 100%;
  .card-text-img {
    width: 241px;
    height: 31px;
    position: absolute;
    top: -25px;
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
        }
        .card-header-react-rectangle {
          width: 2px;
          height: 7px;
          border-radius: 1px;
          display: block;
          background: #03a9ff;
          margin-left: 3px;
          &:nth-child(6),
          &:nth-child(5) {
            background: #d8d8d8;
          }
        }
      }
    }
  }
  // 男
  .people-boy {
    position: absolute;
    width: 100%;
    height: 100%;
    .center {
      position: absolute;
      width: 250px;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%);
    }
  }
  // 女
  .people-girl {
    position: absolute;
    width: 100%;
    height: 100%;
    .center {
      position: absolute;
      width: 250px;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%);
    }
  }
}
</style>