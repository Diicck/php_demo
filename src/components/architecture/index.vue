<template>
  <!-- 使用组织结构内容组件 -->
  <!-- 通过自定义属性的方式将数据传递到子组件 -->
  <ArchitectureComponent :data="data" />
</template>

<script>
// 导入步骤一中封装好的请求方法
import { getFindOrganization } from '@/api/architecture/index.js';
// 导入组织结构内容组件
import ArchitectureComponent from './architecture.vue';

export default {
  name: 'architecture-index',
  data() {
    return {
      // 请求回的数据存到data中
      data: null
    };
  },
  components: {
    // 注册组织内容结构组件
    ArchitectureComponent
  },
  mounted() {
    // 在此生命周期函数中调用发送数据请求方法，获取数据
    this.handleLoadData();
  },
  methods: {
    async handleLoadData() {
      // 发送数据请求
      let res = await getFindOrganization();
      if (res.code != 200) {
        return;
      }
      this.data = res.entity;
    }
  }
};
</script>
