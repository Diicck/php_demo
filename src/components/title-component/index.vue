<template>
  <div class="title-container">
    <div class="icon-container">
      <img :src="icon" alt="" />
    </div>
    <div class="content-container">
      <p class="title">{{ title }}</p>
      <p class="sub-title">{{ subTitle }}</p>
    </div>
  </div>
</template>

<script>
export default {
  name: 'title-component',
  props: {
    // 图标
    icon: {
      default: '',
      type: String
    },
    // 标题
    title: {
      default: '',
      type: String
    },
    // 副标题
    subTitle: {
      default: '',
      type: String
    }
  }
};
</script>

<style lang="scss" scoped>
.title-container {
  position: relative;
  padding-left: 52px;
  .icon-container {
    width: 88px;
    height: 88px;
    background-color: #03a9f4;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    position: absolute;
    top: 50%;
    left: 0;
    transform: translateY(-50%);
    img {
      width: 48px;
    }
  }
  .content-container {
    background-color: #eaeaea;
    width: 280px;
    height: 72px;
    box-sizing: border-box;
    border-radius: 0px 35px 35px 0px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: center;
    .title {
      font-size: 32px;
      line-height: 32px;
      color: #333333;
      font-family: Source Han Sans CN;
      padding-bottom: 6px;
      font-weight: bold;
    }
    .sub-title {
      font-size: 18px;
      font-weight: normal;
      line-height: 14px;
      color: #9e9e9e;
      font-family: Source Han Sans CN;
    }
  }
}
</style>