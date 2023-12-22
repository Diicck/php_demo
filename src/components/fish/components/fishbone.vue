<template>
  <div class="fishbone-container">
    <div class="finsh-content" ref="finshContent">
      <div class="main" v-if="list[0]">
        <div v-for="(item_1, index_1) in list" :key="index_1" class="box" :class="['box_' + item_1.length]">
          <!-- 相对定位 -->
          <div v-for="(item_2, index_2) in item_1" :key="index_2" class="milestone-box" :style="{
              width: map[index_1 + '_' + index_2] + 'px',
            }">
            <span class="line" :style="{
                width: '100%',
              }" v-if="item_2.length > 0"></span>
            <span v-for="(item_3, index_3) in item_2" :key="index_3" :style="{
                left: item_3.style.left + 'px',
              }" class="node-box">
              <component :is="item_3.node.component" :data="item_3" :index="index_3"></component>
            </span>
          </div>
        </div>
        <div class="end-box"></div>
      </div>
      <el-empty style="height: 100%" v-else-if="!loading" :image-size="500"></el-empty>
    </div>
    <!-- 左侧按钮 -->
    <div class="btn left-btn" @click="handleJumpNext(false)">
      <img src="@/assets/fishbone/finsh/btns/left_btn.png" alt="" />
    </div>
    <!-- 右侧按钮 -->
    <div class="btn right-btn" @click="handleJumpNext(true)">
      <img src="@/assets/fishbone/finsh/btns/right_btn.png" alt="" />
    </div>
  </div>
</template>

<script>
import StartComponent from '@/components/fish/components/start.vue';
import RectangleComponent from '@/components/fish/components/rectangle.vue';
import NodeComponent from '@/components/fish/components/node.vue';
import NodePointComponent from '@/components/fish/components/node-week.vue';
import ProJectComponent from '@/components/fish/components/project.vue';
import EndComponent from '@/components/fish/components/end.vue';

export default {
  name: 'fishbone-node',
  props: {
    list: {
      default: () => [],
      type: Array
    },
    map: {
      default: () => {},
      type: Object
    },
    loading: {
      default: false,
      type: Boolean
    }
  },
  components: {
    StartComponent,
    RectangleComponent,
    NodeComponent,
    NodePointComponent,
    ProJectComponent,
    EndComponent
  },
  methods: {
    /**
     * 滚动视图
     */
    handleJumpNext(bool = true) {
      this.$refs['finshContent'].scrollBy({
        left: bool ? 1600 : -1600,
        behavior: 'smooth'
      });
    }
  }
};
</script>

<style lang="scss" scoped>
// 右侧容器
.fishbone-container {
  position: relative;
  width: 100%;
  height: 1100px;
  overflow: hidden;

  // 鱼骨图右侧
  .finsh-content {
    box-sizing: border-box;
    position: relative;
    width: 100%;
    height: 100%;
    padding-left: 120px;
    overflow: auto;
    background: #f7f7f7;

    .main {
      height: 100%;
      display: flex;

      .milestone-box {
        position: relative;

        // 线
        .line {
          width: 100%;
          position: absolute;
          top: 50%;
          left: 0;
          transform: translateY(-50%);
          border-bottom: 3px solid #d8d8d8;
        }
        // 节点
        .node-box {
          position: absolute;
          top: 50%;
          left: 0;
          transform: translateY(-50%);
        }
      }

      .box {
        height: 100%;
        position: relative;
        flex-shrink: 0;
        display: flex;
        flex-direction: column;
      }
      .end-box {
        flex-shrink: 0;
        width: 164px;
        height: 100%;
      }

      // 存在1个块
      .box_1 {
        > div {
          height: 100%;
        }
      }

      // 存在2个块
      .box_2 {
        > div {
          height: 50%;
        }
      }
    }
  }

  // 按钮
  .btn {
    cursor: pointer;
    position: absolute;
    z-index: 1;
    top: 50%;
    width: 40px;
    height: 40px;
    transform: translateY(-50%);
    border-radius: 50%;
    background: #fff;
    box-shadow: 0px 0px 8px 0px rgba(0, 0, 0, 0.1);
    display: flex;
    justify-content: center;
    align-items: center;
    /* 图片水平和垂直居中 */
    &:hover {
      box-shadow: 0px 0px 8px 0px rgba(0, 0, 0, 0.7);
    }
    img {
      width: 24px;
      height: 24px;
    }
  }
  .left-btn {
    left: 45px;
    img {
      transform: translateX(4px);
    }
  }

  .right-btn {
    right: 45px;
    img {
      transform: translateX(-4px);
    }
  }
}
</style>