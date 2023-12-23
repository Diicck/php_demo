<template>
  <!-- 个人荣誉 -->
  <div class="card-honor" v-if="data">
    <div class="card-text">
      <div class="card-text-img">
        <div class="card-header">
          <img src="@/assets/architecture/dialog/block_color.png" alt="" class="card-header-img" />
          <span class="card-header-text">个人荣誉</span>
        </div>
      </div>
      <div class="card-con">
        <div class="card-text-con" v-for="(item, index) in data" :key="index">
          <img :src="item.honorImg" alt="" />
          <span class="text-t1">{{ item.honorName }}</span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'card-honor',
  props: {
    data: {
      type: Array,
      default: null
    }
  }
};
</script>

<style scoped lang="scss">
.card-honor {
  // 整体内容模块
  .card-text {
    position: relative;
    padding-left: 24px;
    height: 180px;
    background: #ffffff;
    box-shadow: 0px 0px 8px 0px #ecf1f3;
    border-radius: 0 8px 8px 8px;
    z-index: 1;
    display: flex;
    align-items: center;
    .card-text-img {
      width: 241px;
      height: 31px;
      position: absolute;
      top: -20px;
      left: 0px;
      background: url('@/assets/architecture/dialog/dialog_top.png');
      background-repeat: no-repeat;
      // 左上角文字背景图片
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
    // 个人荣誉内容
    .card-con {
      display: flex;
      .card-text-con {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-right: 20px;
        cursor: pointer;
        img {
          width: 112px;
          height: 78px;
          margin-bottom: 10px;
        }
        .text-t1 {
          font-size: 12px;
          line-height: 14px;
          color: #485872;
        }
      }
    }
  }
}
</style>