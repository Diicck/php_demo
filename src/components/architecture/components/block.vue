<template>
  <!-- 弹出框组件 open-delay触发延迟 placement显示位置 trigger触发方式 disabled禁用 @show显示回调-->
  <el-popover :open-delay="150" placement="top-start" width="400" trigger="hover" :disabled="status <= 2" @show="handleShow(data.id)">
    <!-- 使用名片组件 -->
    <CardInformation :data="data" :hoverData="hoverDataValue" />
    <!-- Slot reference 触发 Popover 显示的 HTML 元素-->
    <div slot="reference" class="architecture-block" :class="['architecture-block-' + status]" @click="handleLoadData" v-if="data">
      <div class="avatar-container">
        <el-avatar :src="data.avatar" class="avatar">
        </el-avatar>
      </div>
      <div class="info">
        <p class="user-name">{{ data.realName }}</p>
        <p class="user-desc">{{ data.name ? data.name : data.role.name }}</p>
      </div>
    </div>
  </el-popover>
</template>
<script>
/**
 * 组织结构 人员组件
 * 四种级别对应四种样式
 */

// 个人信息卡片
import CardInformation from '../modal/components/card_information.vue';

// 接口
import { getPersonnelSimpleInfo } from '@/api/architecture';
export default {
  name: 'architecture-block',
  components: { CardInformation },
  data() {
    return {
      hoverDataValue: {}
    };
  },
  props: {
    /**
     * 数据
     */
    data: {
      type: Object,
      default: null
    },
    /**
     * 状态 分别对于不同层级
     */
    status: {
      default: 1,
      type: Number
    }
  },
  methods: {
    /**
     * show回调 获取人员信息
     */
    async handleShow(id) {
      let res = await getPersonnelSimpleInfo(id);
      this.hoverDataValue = res.entity;
    },

  }
};
</script>

<style lang="scss" scoped>
.architecture-block {
  display: inline-block;
  box-sizing: border-box;
  cursor: pointer;

  .avatar-container {
    border-radius: 50%;
    padding: 8px;
    border: 2px solid #ffffff;
    box-sizing: border-box;

    .avatar {
      width: 100%;
      height: 100%;
    }
  }

  .user-name {
    color: #ffffff;
    text-align: center;
    /* 不换行 */
    white-space: nowrap;
    /* 超出部分隐藏 */
    overflow: hidden;
    /* 文本超出时，显示省略标记 */
    text-overflow: ellipsis;
  }

  .user-desc {
    color: #ffffff;
    padding-top: 8px;
    text-align: center;
  }
}

/* 第一级别 */
.architecture-block-1 {
  background: linear-gradient(180deg, #2186ff 0%, #9bc7ff 100%);
  box-shadow: 0px 0px 14px 0px rgba(37, 136, 255, 0.5);
  padding: 16px;
  box-sizing: border-box;
  border-radius: 60px 8px 8px 60px;

  display: flex;
  align-items: center;

  .avatar-container {
    width: 88px;
    height: 88px;
  }

  .info {
    padding: 0 12px;
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;

    .user-name {
      font-size: 38px;
      line-height: 38px;
      font-weight: bold;
      text-align: left;
    }

    .user-desc {
      font-size: 24px;
      line-height: 24px;
      text-align: left;
    }
  }
}

.architecture-block-2 {
  padding: 16px;
  box-sizing: border-box;
  background: linear-gradient(180deg, #72b1ff 0%, #99dbff 100%);
  box-shadow: 0px 0px 14px 0px rgba(37, 136, 255, 0.5);
  border-radius: 60px 8px 8px 60px;
  display: flex;
  align-items: center;

  .avatar-container {
    width: 72px;
    height: 72px;
  }

  .info {
    padding: 0 12px;
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;

    .user-name {
      font-size: 32px;
      line-height: 32px;
      font-weight: bold;
      text-align: left;
    }

    .user-desc {
      font-size: 20px;
      line-height: 20px;
      text-align: left;
    }
  }
}

.architecture-block-3 {
  background: #73b2ff;
  border-radius: 8px;
  padding: 8px;
  width: 96px;

  .avatar-container {
    width: 80px;
    height: 80px;
    border-radius: 6px;
  }

  .info {
    .user-name {
      font-weight: bold;
      font-size: 20px;
      line-height: 20px;
      padding-top: 4px;
      text-align: center;
    }

    .user-desc {
      font-size: 14px;
      line-height: 14px;
      padding-top: 4px;
      text-align: center;
    }
  }
}

.architecture-block-4 {
  background: #ffffff;
  box-sizing: border-box;
  border: 2px solid #73b2ff;
  padding: 6px;
  border-radius: 8px;
  width: 76px;

  .avatar-container {
    width: 48px;
    height: 48px;
    border: 2px solid #73b2ff;
    border-radius: 8px;
    margin: 0 auto;
  }

  .info {
    .user-name {
      font-size: 14px;
      line-height: 14px;
      color: #73b2ff;
      padding-top: 4px;
      text-align: center;
    }

    .user-desc {
      font-size: 12px;
      line-height: 12px;
      color: #73b2ff;
      padding-top: 4px;
      text-align: center;
    }
  }
}
</style>