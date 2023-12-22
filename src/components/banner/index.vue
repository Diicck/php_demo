<template>
  <div class="banner-container">
    <div class="banner-image">
      <el-carousel height="600px">
        <el-carousel-item v-for="item in bannerList" :key="item.id">
          <img class="image" :src="item.bannerImg" alt="">
        </el-carousel-item>
      </el-carousel>
    </div>
  </div>
</template>

<script>
// 导入 api/banner中的方法
import { getBannerList } from '@/api/banner'
export default {
  name: 'banner-component',
  data() {
    return {
      // 存放banner数据
      bannerList: []
    }
  },
  methods: {
    // 处理banner数据方法
    async handleBannerList() {
      let res = await getBannerList()
      if (res.code === 200) {
        //将请求到的banner数据存到bannerList中
        this.bannerList = res.entityList
      } else {
        return
      }
    }
  },
  //当组件初始化完毕自动执行以下mounted方法
  mounted() {
    // 调用处理banner数据函数
    this.handleBannerList()
  }
}
</script>

<style lang="scss" scoped>
.banner-container {
  .banner-image {
    margin: 0 auto;
    max-width: 1920px;
    min-width: 1200px;
    height: 600px;
    border-radius: 8px;
    overflow: hidden;
    .image {
      width: 100%;
      height: 100%;
    }
  }
}
</style>