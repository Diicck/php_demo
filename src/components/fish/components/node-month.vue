<template>
  <!-- 月 -->
  <div class="finsh-node-month" v-if="data">
    <!-- 月考核情况 -->
    <div class="node-month">
      <div style="">
        <div
            class="node-month-top"
            :style="{ backgroundColor: data.style.bgColor }"
            @click="handleLoadData(data.data)"
        >
          <div :class="index % 2 === 0 ? 'node-month-img-1' : 'node-month-img'">
            <svg
                class="node-month-svg"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                version="1.1"
                width="26.000000417168962"
                height="8.000001355799128"
                viewBox="0 0 26.000000417168962 8.000001355799128"
            >
              <g
                  transform="matrix(1,5.2146120310681e-8,-5.2146120310681e-8,1,0,-2.175374290764814e-14)"
              >
                <path
                    d="M4.17168962485448e-7,0C7.179700417168963,0,13.000000417168962,3.58172,13.000000417168962,8C13.000000417168962,3.58172,18.820300417168962,0,26.000000417168962,0L4.17168962485448e-7,0Z"
                    :fill="data.style.bgColor"
                    fill-opacity="1"
                />
              </g>
            </svg>
          </div>
          <span class="node-month-text">月度考核情况</span>
          <div class="node-month-btns">
            <span class="btn"></span>
            <svg
                class="image"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                version="1.1"
                width="5.333251356952047"
                height="8.000006278262546"
                viewBox="0 0 5.333251356952047 8.000006278262546"
            >
              <g
                  transform="matrix(-1,-1.04292240621362e-7,-1.04292240621362e-7,1,10.666502713904151,5.562167338134483e-7)"
              >
                <path
                    d="M8.123171356952048,4.119790556216647C8.055481356952047,4.054280556216647,8.055481356952047,3.9457405562166468,8.123171356952048,3.880230556216647C8.462521356952047,3.5501305562166467,9.450831356952047,2.584850556216647,10.441521356952048,1.581350556216647C10.665521356952048,1.354540556216647,10.751831356952048,1.032100556216647,10.562521356952047,0.778103556216647C10.484831356952046,0.674134556216647,10.381521356952046,0.556353556216647,10.244521356952047,0.42991555621664695C10.058171356952048,0.257821556216647,9.880521356952048,0.14272855621664696,9.732521356952047,0.06616575621664696C9.490171356952047,-0.05914684378335304,9.206171356952048,0.004790626216646963,8.986171356952047,0.16366555621664697C7.263521356952047,1.4069805562166469,6.088830356952047,2.749350556216647,5.520517356952047,3.470100556216647C5.270829556952047,3.787130556216647,5.270829556952047,4.212880556216647,5.520517356952047,4.529910556216647C6.088830356952047,5.250660556216647,7.263521356952047,6.593040556216647,8.986171356952047,7.836380556216647C9.206171356952048,7.995230556216647,9.490171356952047,8.059130556216648,9.732521356952047,7.933850556216647C9.880521356952048,7.857290556216647,10.058171356952048,7.742200556216647,10.244521356952047,7.570100556216647C10.381521356952046,7.443660556216647,10.484831356952046,7.325880556216647,10.562521356952047,7.221910556216647C10.751831356952048,6.967910556216647,10.665521356952048,6.645480556216647,10.441521356952048,6.418700556216647C9.450831356952047,5.415160556216647,8.462521356952047,4.449880556216647,8.123171356952048,4.119790556216647Z"
                    :fill="data.style.bgColor"
                    fill-opacity="1"
                />
              </g>
            </svg>
          </div>
        </div>

        <div
            :class="index % 2 === 0 ? 'node-month-bottom-1' : 'node-month-bottom'"
        >
          <el-image
              v-for="item in data.data.personnelList"
              :key="item?.id"
              :src="item?.avatar"
          >
            <div slot="error" class="image-slot">
              <el-avatar :size="24" icon="el-icon-user-solid"></el-avatar>
            </div>
          </el-image>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "finsh-node-month",
  props: {
    data: {
      default: null,
      type: Object,
    },
    index: {
      default: 0,
      type: Number,
    },
  },
  data() {
    return {};
  },
  methods: {
    handleLoadData(data) {
      this.$bus.$emit("modal:month", data);
    },
  },
  components: {},
};
</script>

<style lang="scss" scoped>
.finsh-node-month {
  width: 24px;
  height: 24px;
  position: relative;
  .node-month {
    display: flex;
    flex-direction: column;

    .node-month-top {
      box-sizing: border-box;
      position: relative;
      cursor: pointer;
      width: 124px;
      height: 24px;
      border-radius: 144px;
      margin-left: 14px;
      /* 自动布局 */
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 4px 16px;
      background: #fd5f17;
      .node-month-img-1 {
        position: absolute;
        top: -12px;
        left: 50%;
        transform: translateX(-50%) rotate(180deg);
      }

      .node-month-img {
        position: absolute;
        bottom: -12px;
        left: 50%;

        transform: translateX(-50%);
        img {
          display: block;
          transform: rotate(180deg);
        }
      }

      .node-month-text {
        font-size: 12px;
        line-height: 12px;
        color: #ffffff;
        margin-right: 5px;
      }
      .node-month-btns {
        position: relative;
        display: flex;
        align-items: center;
        justify-content: center;

        .btn {
          width: 14px;
          height: 14px;
          background: #ffffff;
          border-radius: 50%;
        }
        .image {
          position: absolute;

          width: 6px;
          height: 8px;
          opacity: 1;
          border-radius: 50%;
          background: #ffffff;
        }
      }
    }

    .node-month-bottom-1 {
      display: flex;
      align-items: center;
      .el-image {
        width: 24px;
        height: 24px;
        border-radius: 50%;
        cursor: pointer;
      }
      .el-image:nth-child(1n) {
        margin-left: -8px;
      }
    }
    .node-month-bottom {
      position: absolute;
      top: -32px;
      left: 14px;
      width: 135px;
      display: flex;
      justify-content: center;
      align-items: center;


      .el-image {
        width: 24px;
        height: 24px;
        border-radius: 50%;
        cursor: pointer;
      }
      .el-image:nth-child(1n) {
        margin-left: -8px;
      }
    }
    .node-month-bottom-1 {
      position: absolute;
      top: 32px;
      left: 14px;
      display: flex;
      width: 135px;
      justify-content: center;
      align-items: center;
      img:nth-child(1n) {
        margin-left: -8px;
      }
    }
  }
}
</style>
