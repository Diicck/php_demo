<template>
  <div class="architecture-container">
    <div class="head-container">
      <TitleComponent :icon="require('@/assets/architecture/icon.png')" title="组织结构图" sub-title="ORGANIZATION CHART" />
    </div>
    <div class="content-container" v-if="data">
      <div class="box-1">
        <div class="block-container">
          <BlockComponent :data="data" />
        </div>
        <div class="line-container">
          <LineComponent :scale="scale" />
        </div>
      </div>
      <div class="box-2">
        <div class="block-container">
          <data class="block-item" v-for="(item, index) in data.childList" :key="index" :style="{'flex':item.childList.length}">
            <div class="box" :class="{ 'box-2': item.childList.length > 1 }">
              <BlockComponent :status="2" :data="item" />
              <div class="line" v-if="item.childList.length > 1">
                <LineComponent />
              </div>
              <div class="group-container">
                <div :class="{ 'group-item': item.childList.length > 1 }" v-for="(item2, index2) in item.childList" :key="index2">
                  <GroupComponent :data="item2" line-height="96px" v-if="item.childList.length == 1" />
                  <GroupComponent :data="item2" v-else />
                </div>
              </div>
            </div>
          </data>
        </div>
      </div>
    </div>
  </div>
</template>

<script >
import TitleComponent from '@/components/title-component/index.vue';
import BlockComponent from './components/block.vue';
import LineComponent from './components/line.vue';
import GroupComponent from './components/group.vue';
export default {
  name: 'architecture-component',
  props: {
    data: {
      default: null,
      type: Object
    }
  },
  components: {
    TitleComponent,
    BlockComponent,
    LineComponent,
    GroupComponent
  },

  computed: {
    scale() {
      if (this.data) {
        let len = this.data.childList.length;
        let arr = [];
        for (let i = 0; i < len; i++) {
          arr.push(this.data.childList[i].childList.length);
        }
        return arr;
      }
      return [];
    }
  }
};
</script>

<style lang="scss" scoped>
.architecture-container {
  width: 100%;
  height: auto;
  background-image: url('@/assets/architecture/bg.png');
  background-size: cover;
  padding-top: 72px;
  padding-bottom: 72px;
  background-repeat: no-repeat;
  background-position-x: 50%;
  box-sizing: border-box;

  .head-container {
    display: flex;
    justify-content: center;
    align-content: center;
    padding-bottom: 70px;
    box-sizing: border-box;

  }

  .content-container {
    width: 1240px;
    margin: 0 auto;

    .box-1 {
      .block-container {
        width: 100%;
        display: flex;
        justify-content: center;
      }

      .line-container {
        width: 100%;
        height: 80px;
      }
    }

    .box-2 {
      .block-container {
        width: 1200px;
        display: flex;
        justify-content: space-around;
        .block-item {
          display: flex;
          justify-content: center;
        }
        .box {
          width: 248px;
          display: flex;
          flex-direction: column;
          align-items: center;
          flex-shrink: 0;

          .line {
            width: 100%;
            height: 48px;
          }

          .group-container {
            display: flex;
            width: 100%;

            .group-item {
              width: 50%;
              display: flex;
              justify-content: center;
            }
          }
        }

        .box-2 {
          width: 480px;
          flex-shrink: 0;
          display: flex;
          flex-direction: column;
          align-items: center;

          .line {
            width: 100%;
            height: 48px;
          }
        }
      }
    }
  }
}
</style>