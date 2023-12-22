<template>
  <!-- 开始 -->
  <div class="finsh-start" v-if="data">
    <div
        class="arrows-img"
        :style="{ backgroundColor: data.style.bgColor }"
    ></div>
    <div
        class="triangle-up"
        :style="{ borderLeftColor: data.style.bgColor }"
    ></div>

    <div class="arrows-x">
      <div class="arrows-line"></div>
      <div class="arrows-text">
        <span>{{ data.data.name }}</span>
        <span>10月10日-12月20日</span>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    data: {
      default: null,
      type: Object,
    },
  },
  name: "finsh-start",

  data() {
    return {};
  },
  mounted() {},
};
</script>

<style lang="scss" scoped>
.finsh-start {
  position: relative;
  .arrows-img {
    width: 236px;
    height: 106px;
  }
  .triangle-up {
    width: 0;
    height: 0;
    border-top: 53px solid transparent;
    border-left: 50px solid green;
    border-right: 50px solid transparent;
    border-bottom: 53px solid transparent;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    left: 236px;
  }
  .arrows-x {
    display: flex;
    align-items: center;
    justify-content: center;
    position: absolute;
    top: 0;
    padding: 18px;
    .arrows-line {
      width: 2px;
      height: 64px;
      background-color: #fff;
    }
    .arrows-text {
      margin-left: 8px;
      display: flex;
      justify-content: center;
      flex-direction: column;
      color: #ffffff;
      :nth-child(1) {
        font-size: 36px;
      }
      :nth-child(2) {
        font-size: 18px;
      }
    }
  }
}
</style>