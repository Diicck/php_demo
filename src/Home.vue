<script>
import HeaderCom from "@/components/common/header.vue"
import BannerCom from "@/components/banner/index.vue";
import FishboneCom from "@/components/fish/index.vue";
import ArchitectureCom from "@/components/architecture/index.vue";
import memberDataCom from "@/components/member-data/index.vue";
import FooterCom from "@/components/common/footer.vue";

export default {
  name:"home-page",
  components:{
    HeaderCom,
    BannerCom,
    FishboneCom,
    ArchitectureCom,
    memberDataCom,
    FooterCom
  }
}

</script>

<template>
  <div>
    <HeaderCom/>
    <BannerCom/>
    <FishboneCom/>
    <ArchitectureCom/>
    <member-data-com/>
    <FooterCom/>


  </div>
</template>

<style>
</style>