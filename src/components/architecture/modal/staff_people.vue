<template>
  <div>
    <!-- 档案的弹窗 -->
    <el-dialog center :visible.sync="centerDialogVisible" class="dialog-box" width="1135px">
      <div class="card-peopleInfo-con" v-loading="loading" element-loading-text="加载中">
        <div class="card-count" v-if="dialogValueList">
          <div slot="title" class="dialog-title">
            <h3>超越科技有限公司员工档案</h3>
          </div>
          <div class="card-content">
            <div class="card-left">
              <!-- 个人信息 -->
              <CardInformation :data="dialogValueList" />
              <!-- 个人数据分析 -->
              <CardAnalysis :data="dialogValueList.dataAnalysis" />
              <!-- 个人荣誉 -->
              <CardHonor :data="dialogValueList.honorList" />
            </div>
            <div class="card-center">
              <CardSchedule :data="dialogValueList.milestonePoList" />
              <CardProjectsNumber :data="dialogValueList.projectList" />
            </div>
            <!-- 右侧 -->
            <div class="card-right">
              <CardPeopleImage :data="images" />
            </div>
          </div>
        </div>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import CardInformation from './components/card_information.vue';
import CardAnalysis from './components/card_analysis.vue';
import CardHonor from './components/card_honor.vue';
import CardSchedule from './components/card_schedule.vue';
import CardProjectsNumber from './components/card_projectsNumber.vue';
import CardPeopleImage from './components/card_peopleImage.vue';
import ModalMixin from '@/utils/modal.js';

// 接口
import { getFindEmployeeFileById } from '@/api/architecture/index.js';

// data
import data from './data.js';
const imageData = data.imageData;

export default {
  name: 'dialg-staff',
  mixins: [ModalMixin],
  data() {
    return {
      dialogValueList: {},
      modal_name: 'dialg-staff',
      loading: false,
      // 个人形象
      images: []
    };
  },
  components: {
    CardInformation,
    CardAnalysis,
    CardHonor,
    CardSchedule,
    CardProjectsNumber,
    CardPeopleImage
  },
  methods: {
    async handleGetFindEmployeeFileById(id) {
      this.loading = true;
      let res = await getFindEmployeeFileById(id);
      try {
        if (res.code != 200) {
          this.loading = false;
          return;
        } else {
          console.log(res, 'res');
          this.$set(this, 'dialogValueList', res.entity);
          this.handleToImages();
        }
      } catch (error) {
        return;
      } finally {
        this.loading = false;
      }
    },
    handleLoadData(data) {
      this.handleGetFindEmployeeFileById(data.id);
    },
    /**
     * 计算个人形象
     */
    handleToImages() {
      let datas = JSON.parse(JSON.stringify(this.dialogValueList));
      let arr = [];
      let config = JSON.parse(JSON.stringify(imageData[datas.sex]));
      arr = config.base;
      if (datas.milestonePoList.length > 0) {
        let _arr = datas.milestonePoList.map(item => {
          return config.data[item.clothingName];
        });
        for (let i in arr) {
          let find = _arr.find(item => {
            return item.type == arr[i].type;
          });
          if (find) {
            arr[i] = find;
          }
        }
      }
      this.$set(this, 'images', arr);
    }
  }
};
</script>

<style lang="scss" scoped>
// 弹窗
::v-deep .dialog-box {
  .el-dialog {
    background: linear-gradient(180deg, #ebf0f3 0%, #f9f9f9 100%) !important;
    border-radius: 8px;

    .el-dialog__body {
      padding: 0 !important;
    }
  }
}
::v-deep .el-loading-mask {
  top: -30px;
}
.card-peopleInfo {
  width: 100%;
  // background: linear-gradient(180deg, #ebf0f3 0%, #f9f9f9 100%);
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  border-radius: 16px;
}
.card-peopleInfo-header {
  margin-bottom: 53px;
  width: 288px;
  height: 24px;
  font-size: 24px;
  font-weight: 500;
  line-height: 24px;
  color: #132035;
}

.card-count {
  width: 100%;
  height: 100%;
  box-sizing: border-box;

  .dialog-title {
    font-size: 24px;
    font-weight: 500;
    line-height: 24px;
    text-align: center;
    margin-bottom: 32px;
    color: #132035;
  }
  .card-content {
    padding: 20px 32px 32px 32px;

    display: flex;
    justify-content: space-between;
    .card-left {
      width: 376px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }
    .card-center {
      width: 384px;
      border-radius: 0 8px 8px 8px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }
    .card-right {
      position: relative;
      width: 267px;
      background-color: #fff;
      border-radius: 0 8px 8px 8px;
      box-shadow: 0px 0px 8px 0px #ecf1f3;
    }
  }
}
</style>