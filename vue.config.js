const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true,
  // 配置开发服务器（Development Server）的选项
  devServer: {
    // 指定开发服务器的主机地址
    host: "0.0.0.0",

    // 指定开发服务器的端口号
    port: "5173",

    // 配置代理，用于将请求代理到后端API服务器
    proxy: {
      // 当请求的路径以/api开头时，将请求代理到process.env.VUE_APP_API指定的地址
      //http://47.94.101.66:8083/ostudent/
      '/api': {
        target: process.env.VUE_APP_API_2,
        // 启用跨域
        changeOrigin: true,
        // 将请求路径中的/api重写为/
        pathRewrite: {
          '^/api': '/'
        }
      },
      // 当请求的路径以/upload开头时，将请求代理到process.env.VUE_APP_API指定的地址
      '/upload': {
        target: process.env.VUE_APP_API_2,
        // 启用跨域
        changeOrigin: true,
        // 将请求路径中的/upload重写为/upload
        pathRewrite: {
          '^/upload': '/upload'
        }
      },
    }
  }
})