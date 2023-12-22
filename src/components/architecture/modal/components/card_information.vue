<template>
  <!-- 个人信息 -->
  <div class="card-information" v-if="data || hoverData">
    <div class="card-text">
      <div class="card-text-img">
        <div class="card-header">
          <img src="../../../../assets/architecture/dialog/block_color.png" alt="" class="card-header-img" />
          <span class="card-header-text">个人信息</span>
        </div>
      </div>
      <!-- 信息左侧 -->
      <div class="card-text-content-left">
        <div class="card-text-name">
          <span class="text-name-left">名称</span>
          <span class="text-name-right">{{ data ? data.realName : hoverData.realName }}
          </span>
          <img v-if="data ? data.sex == 1 : hoverData.sex == 1" class="sex sex-boy" src="../../../../assets/architecture/dialog/boy.png" alt="" />
          <img v-else class="sex sex-girl" src="../../../../assets/architecture/dialog/girl.png" alt="" />
        </div>

        <div class="card-text-name">
          <span class="text-name-left">部门</span>
          <span class="text-name-right">{{ data ? data.subjectName : hoverData.subjectName }}
          </span>
        </div>
        <div class="card-text-name">
          <span class="text-name-left">职位</span>
          <span class="text-name-right">{{
              data ? data.name : hoverData.name
            }}</span>
        </div>
        <div class="card-text-name">
          <span class="text-name-left">特点</span>
          <span class="text-name-right">{{
              data ? data.feature : hoverData.feature
            }}</span>
        </div>
      </div>

      <!-- 信息右侧 -->
      <div class="card-text-content-right">
        <span class="card-right-text">个人勋章</span>
        <div class="card-right-box">
          <div v-for="item in data.medalList
              ? data.medalList
              : hoverData.medalList" :key="item.id" class="card-right-box-block">
            <img :src="item.medalImg" style="width: 30px; height: 30px" alt="" />
            <span>{{ item.medalName }}</span>
          </div>
        </div>
      </div>
    </div>

    <div class="card-btn" v-show="hoverData" @mouseover="btnType = 'primary'" @mouseleave="btnType = 'text'">
      <div class="line"></div>
      <div class="main">
        <el-button :type="btnType" @click="handleLoadData(data)">查看员工档案 >></el-button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    data: {
      default: null,
      type: Object
    },
    hoverData: {
      default: null,
      type: Object
    }
  },
  name: 'card-information',
  data() {
    return {
      btnType: 'text'
    };
  },
  methods: {

  }
};
</script>

<style scoped lang="scss">
.card-information {
  // 整体
  .card-text {
    position: relative;
    padding-left: 24px;
    height: 180px;
    z-index: 1;
    display: flex;
    align-items: center;
    background: #ffffff;
    // box-shadow: 0px 0px 8px 0px #ecf1f3;
    border-radius: 0 8px 8px 8px;
    // 左上角文字背景图片
    .card-text-img {
      width: 241px;
      height: 31px;
      position: absolute;
      top: -20px;
      left: 0;
      background: url('@/assets/architecture/dialog/dialog_top.png');
      background-repeat: no-repeat;
      .card-header {
        position: relative;
        width: 100%;
        height: 100%;
        .card-header-img {
          position: absolute;
          bottom: 0;
          left: 16px;
        }
        .card-header-text {
          position: absolute;
          bottom: 0;
          left: 24px;
          font-size: 16px;
          font-weight: 500;
          line-height: 16px;
          color: #485872;
        }
        .card-header-react {
          position: absolute;
          bottom: 0;
          left: 107px;
          display: flex;
          align-items: flex-end;
          .card-header-react-schedule {
            font-size: 12px;
            line-height: 14px;
            color: #485872;
          }
          .card-header-react-rectangle {
            width: 2px;
            height: 7px;
            border-radius: 1px;
            display: block;
            background: #03a9ff;
            margin-left: 3px;
            &:nth-child(6),
            &:nth-child(5) {
              background: #d8d8d8;
            }
          }
        }
      }
    }
    // 个人信息
    .card-text-content-left {
      height: 100%;
      padding: 24px 0;
      box-sizing: border-box;
      display: flex;
      flex: 1;
      flex-direction: column;
      justify-content: space-between;
      .card-text-name {
        display: flex;
        align-items: center;
        .text-name-left {
          font-size: 14px;
          line-height: 14px;
          color: #949aa4;
          margin-right: 16px;
        }
        .text-name-right {
          font-size: 14px;
          line-height: 14px;
          color: #485872;
        }
        .sex {
          width: 15px;
          vertical-align: middle;
          margin-left: 8px;
        }
      }
    }
    // 个人勋章
    .card-text-content-right {
      height: 100%;
      padding: 24px 0;
      box-sizing: border-box;
      display: flex;
      flex: 1.5;
      flex-direction: column;
      justify-content: space-between;
      .card-right-text {
        font-size: 14px;
        line-height: 14px;
        color: #949aa4;
        margin-bottom: 14px;
      }
      .card-right-box {
        display: flex;
        flex-wrap: wrap;
        height: 100%;
        align-content: space-between;
        .card-right-box-block {
          display: flex;
          flex-direction: column;
          align-items: center;
          width: 48px;
          height: 45px;
          &:nth-child(2),
          &:nth-child(5) {
            margin: 0 24px;
          }
          span {
            font-size: 12px;
            text-align: center;
            color: #485872;
            margin: 4px 0 8px 0;
          }
        }
      }
    }
  }
  .card-btn {
    display: flex;
    flex-direction: column;
    padding: 0 16px;
    .line {
      width: 100%;
      height: 1px;
      border-radius: 1px;
      background: #dddddd;
    }
    .main {
      padding: 8px 0;
      width: 100%;
      .el-button {
        width: 100%;
      }
    }
  }
}
</style>