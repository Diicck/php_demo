/**
 * 弹窗功能混入
 */
export default {
    data() {
        return {
            // 弹窗名称
            modal_name: '',
            // 弹窗开启状态
            centerDialogVisible: false,
        };
    },
    mounted() {
        // 初始化监听
        this.handleOn();
    },
    beforeDestroy() {
        // 销毁前取消监听
        this.handleOff();
    },
    methods: {
        handleOn() {
            // 监听弹窗打开事件
            this.$bus.$on(`modal:${this.modal_name}`, (data) => {
                // 开启弹窗状态
                this.centerDialogVisible = true;
                // 执行加载方法
                this.handleLoadData(data);

            })
            // 监听弹窗关闭事件
            this.$bus.$on(`modal-close:${this.modal_name}`, () => {
                this.centerDialogVisible = false;
            })
        },
        handleOff() {
            // 取消弹窗打开事件
            this.$bus.$off(`modal:${this.modal_name}`);
            // 取消弹窗关闭事件
            this.$bus.$off(`modal-close:${this.modal_name}`);
        },
        /**
         * 加载事件 后期混入组件后需要重写该方法
         */
        handleLoadData() {

        },
    },
}