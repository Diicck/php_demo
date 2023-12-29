<template>
  <!-- 课程 -->
  <div>
    <div
        class="finsh-rectangle"
        :style="{ backgroundColor: data.style.bgColor }"
        v-if="data"
    >
      <div class="rectangle-centent">
        <!-- 学习 -->
        <div class="rectangle-fun">
          <svg
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              version="1.1"
              width="32"
              height="32"
              viewBox="0 0 32 32"
          >
            <defs>
              <clipPath id="master_svg0_239_7355/37_0040">
                <rect x="0" y="0" width="32" height="32" rx="0" />
              </clipPath>
            </defs>
            <g clip-path="url(#master_svg0_239_7355/37_0040)">
              <g>
                <path
                    d="M29.49995,3.4906005859375L2.59375,3.4906005859375C2.31875,3.4906005859375,2.09375,3.7156005859375,2.09375,3.9906005859375C2.09375,4.2656005859375,2.31875,4.4906005859375,2.59375,4.4906005859375L4.03125,4.4906005859375L4.03125,22.7000005859375C4.03125,22.9750005859375,4.25625,23.2000005859375,4.53125,23.2000005859375L9.61875,23.2000005859375L5.14687,27.6468005859375C4.95,27.8406005859375,4.95,28.1594005859375,5.14375,28.3531005859375C5.24062,28.4500005859375,5.36875,28.5000005859375,5.4968699999999995,28.5000005859375C5.625,28.5000005859375,5.75312,28.4531005859375,5.85,28.3531005859375L11.0375,23.1968005859375L20.96255,23.1968005859375L26.14685,28.3500005859375C26.24375,28.4468005859375,26.37185,28.4968005859375,26.50005,28.4968005859375C26.62815,28.4968005859375,26.75625,28.4468005859375,26.85315,28.3500005859375C27.04685,28.1531005859375,27.04685,27.8375005859375,26.85005,27.6437005859375L22.38125,23.2000005859375L27.56255,23.2000005859375C27.83745,23.2000005859375,28.06255,22.9750005859375,28.06255,22.7000005859375L28.06255,4.4906005859375L29.49995,4.4906005859375C29.77495,4.4906005859375,29.99995,4.2656005859375,29.99995,3.9906005859375C29.99995,3.7156005859375,29.77495,3.4906005859375,29.49995,3.4906005859375ZM27.06255,22.2000005859375L5.03125,22.2000005859375L5.03125,4.4906005859375L27.06255,4.4906005859375L27.06255,22.2000005859375Z"
                    fill="#FFFFFF"
                    fill-opacity="1"
                />
              </g>
              <g>
                <path
                    d="M7.89697265625,7.09375L7.89697265625,19.59375L24.19697265625,19.59375L24.19697265625,7.09375L7.89697265625,7.09375ZM15.98759265625,16.35L10.79072265625,16.35C10.24384265625,16.35,9.80009265625,15.90625,9.80009265625,15.35937C9.80009265625,14.8125,10.24384265625,14.36875,10.79072265625,14.36875L15.98759265625,14.36875C16.53447265625,14.36875,16.97822265625,14.8125,16.97822265625,15.35937C16.97822265625,15.90625,16.53447265625,16.35,15.98759265625,16.35ZM21.30317265625,12.10313L10.79072265625,12.10313C10.24384265625,12.10313,9.80009265625,11.659379999999999,9.80009265625,11.1125C9.80009265625,10.56563,10.24384265625,10.12187,10.79072265625,10.12187L21.30317265625,10.12187C21.85007265625,10.12187,22.293872656250002,10.56563,22.293872656250002,11.1125C22.293872656250002,11.659379999999999,21.85007265625,12.10313,21.30317265625,12.10313Z"
                    fill="#FFFFFF"
                    fill-opacity="1"
                />
              </g>
            </g>
          </svg>

          <span class="rectangle-profession-name">{{
              data.data.milestoneName
            }}</span>
        </div>
        <!-- 日期 -->
        <div class="rectangle-data">
          {{ TimeStr }}
        </div>
        <!-- 详情 -->
        <div class="rectangle-btn" @click="handleLoadData(data.data)">
          <button :style="{ color: data.style.bgColor }">查看详情</button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "finsh-rectangle",
  props: {
    data: {
      default: null,
      type: Object,
    },
  },
  data() {
    return {
      adress: "http://10.2.4.8:8000",
    };
  },
  methods: {
    handleLoadData(data) {
      this.$bus.$emit("modal:course-outline", data);
    },
  },

  computed: {
    TimeStr() {
      let value = "red";
      if (this.data) {
        let start = this.data.data.startTime.split(" ")[0];
        let end = this.data.data.endTime.split(" ")[0];
        value =
            start.slice(5, 7) +
            "月" +
            start.slice(8, 10) +
            "日" +
            "-" +
            end.slice(5, 7) +
            "月" +
            end.slice(8, 10) +
            "日";
      }
      return value;
    },
  },
};
</script>

<style lang="scss" scoped>
.finsh-rectangle {
  width: 270px;
  height: 166px;
  border-radius: 8px;
  background: #fd5f17;
  box-sizing: border-box;

  .rectangle-centent {
    margin-left: 24px;

    .rectangle-fun {
      display: flex;
      align-items: center;
      color: #fff;
      padding-top: 24px;
      .rectangle-profession-name {
        font-size: 36px;
        margin-left: 10px;
        overflow: hidden;
        text-wrap: normal;
        text-overflow: ellipsis;
        white-space: nowrap;
      }

      .icon {
        display: block;
        width: 28px;
        height: 25px;
        vertical-align: bottom;
      }
    }

    .rectangle-data {
      display: flex;

      color: #fff;
      font-size: 18px;
      margin: 8px 0;
    }

    .rectangle-btn {
      display: flex;

      button {
        border: none;
        width: 222px;
        height: 40px;
        background-color: #fff;
        color: #fd5f17;
        border-radius: 8px;
        cursor: pointer;
        font-size: 24px;
        line-height: 24px;
      }
    }
  }
}
</style>