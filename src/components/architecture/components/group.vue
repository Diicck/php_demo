<template>
  <div class="architecture-group">
    <div class="line" :style="{ height: lineHeight }">
      <LineComponent />
    </div>
    <div class="blocks">
      <div class="block" v-for="(item, index) in user_not_lv4" :key="index">
        <BlockComponent :status="3" :data="item" />
      </div>
    </div>

    <div class="member-box">
      <div class="line">
        <LineComponent mode="custom" :scale="[0, 100]" />
      </div>
      <div class="member-list-container">
        <div class="member-item" v-for="(item, index) in user_lv4" :key="index">
          <BlockComponent :status="4" :data="item" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
/**
 * group 是对应 3 4 级别人员展示
 */
import BlockComponent from './block.vue';
import LineComponent from './line.vue';
export default {
  name: 'architecture-group',
  props: {
    /**
     * 线高
     */
    lineHeight: {
      default: '48px',
      type: String
    },
    /**
     * 人员数据
     */
    data: {
      default: () => [],
      type: Array
    }
  },
  components: {
    BlockComponent,
    LineComponent
  },
  computed: {
    user_lv4() {
      return this.data.filter(item => item.role.level == 4);
    },
    user_not_lv4() {
      return this.data.filter(item => item.role.level != 4);
    }
  },
  mounted() {}
};
</script>

<style lang="scss" scoped>
.architecture-group {
  --line-color: #01405d;
  --line-opacity: 0.1;

  width: 248px;
  margin: 0 auto;
  margin-top: -2px;

  .line {
    width: 100%;
    height: 32px;
  }

  .liner {
    display: block;
    transform: rotateZ(180deg);
  }

  .blocks {
    display: flex;

    .block {
      width: 50%;
      display: flex;
      justify-content: center;
    }
  }

  .member-box {
    width: 100%;
    padding: 0 2px;
    box-sizing: border-box;

    .member-list-container {
      width: auto;
      display: flex;
      flex-wrap: wrap;
      padding: 8px 0;
      box-sizing: border-box;
      // border-top: 2px solid var(--line-color);

      .member-item {
        width: 33%;
        margin-bottom: 12px;
        display: flex;
        justify-content: center;
      }
    }
  }
}
</style>