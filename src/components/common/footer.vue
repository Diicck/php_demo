<template>
  <div class="foot-component">
      <p>
          Copyright © 2020 ~ {{ nowYear1 }} , 河北软件职业技术学院. All right reserved.
      </p>
      <p>冀ICP备 16008576号-1冀公网安备 11010802028971号</p>
  </div>
</template>

<script>
export default {
  name: "foot-component",
  props:{
      nowYear1: {
          type:Number,
          default: 2022
      }
  }
};
</script>

<style lang="scss" scoped>
.foot-component {
  text-align: center;
  font-size: 12px;
  font-weight: normal;
  line-height: 18px;
  color: #cccccc;
  padding-bottom: 16px;
  padding-top: 32px;
  p:nth-child(1) {
      padding-top: 8px;
  }
}
</style>