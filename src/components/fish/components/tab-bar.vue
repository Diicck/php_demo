<template>
  <div>
    <div class="fishbone-tabBar">
      <div class="taBar-item-con">
        <div class="taBar-item" :class="item.id === activeId ? 'taBar-item-active' : ''" v-for="item in fishbonelist" :key="item.id" @click="handleSelect(item)">
          <img :src="item.id === activeId ? item.coverActive : item.cover" />
          <span :class="
                item.id === activeId
                  ? 'taBar-item-text-active'
                  : 'taBar-item-text'
              ">{{ item.subjectName }}</span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { getfindSubjectList } from '@/api/fish/index.js';

export default {
  name: 'tabBar',
  data() {
    return {
      // 用于追踪当前选项卡的ID
      activeId: '',
      // 用于存储从API获取的专业列表
      fishbonelist: []
    };
  },
  methods: {
    // 处理选项卡的选择
    handleSelect(item) {
      this.activeId = item.id;
      this.$emit('change', JSON.parse(JSON.stringify(item)));
    },
    // 获取专业列表
    async handleGetSubJectList() {
      let res = await getfindSubjectList();
      this.fishbonelist = res.entityList;
      if (this.fishbonelist.length > 0) {
        this.handleSelect(this.fishbonelist[0]);
      }
    }
  },
  mounted() {
    // TODO 记得开启
    this.handleGetSubJectList();
  }
};
</script>

<style lang="scss" scoped>
// tabBar
.fishbone-tabBar {
  width: 1040px;
  height: 102px;
  margin: 0 auto;
  display: flex;
  justify-content: center;

  .taBar-item-con {
    width: 1040px;
    display: flex;
    justify-content: space-between;

    .taBar-item {
      cursor: pointer;
      display: flex;
      width: 136px;
      height: 102px;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      line-height: 1;

      .taBar-item-text {
        margin-top: 8px;
        color: #cccccc;
      }

      .taBar-item-text-active {
        color: #fe6b1e;
      }

      img {
        width: 56px;
        height: 56px;
      }
    }

    .taBar-item-active {
      position: relative;

      &::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        display: block;
        width: 100%;
        margin-top: 10px;
        height: 3px;
        background-color: #fe6b1e;
      }
    }
  }
}
</style>