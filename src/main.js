import Vue from 'vue'
// 引入 element
import ElementUI from 'element-ui';
// 引入 element-ui css
import 'element-ui/lib/theme-chalk/index.css';
import App from './App.vue'

Vue.config.productionTip = false

// 注册 绑定 element-ui
Vue.use(ElementUI);

// 在vue的原型上增加$bus 赋值一个新的vue实例
Vue.prototype.$bus = new Vue();

new Vue({
  render: h => h(App),
}).$mount('#app')