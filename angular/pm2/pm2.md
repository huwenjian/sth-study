https://www.jianshu.com/p/fdc2a8ff7861

##说明
    PM2是node进程管理工具，可以利用它来简化很多node应用管理的繁琐任务，如性能监控、自动重启、负载均衡等，而且使用非常简单。

## SSR

## PM2 PM2的安装和使用简介  https://www.jianshu.com/p/fdc2a8ff7861
## Angular 7 SSR 之后使用 node + nginx 部署在linux
https://blog.csdn.net/weixin_38391672/article/details/98471035


## 解决报错问题
https://blog.csdn.net/weixin_39413579/article/details/89966742

解决方案 由于 npm 5 使用了新的包管理模式，所以在升级之后，请先清空一下本地缓存： https://my.oschina.net/u/1033181/blog/1557873

npm cache clean --force 。
npm cache clear --force && npm install --no-shrinkwrap --update-binary


## Repository is not clean.  Please commit or stash any changes before updating.

ng update @angular/cli @angular/core --allow-dirty
ng update @angular/cli @angular/core --allow-dirty --force


##升级 angular
https://blog.csdn.net/shengandshu/article/details/83615094


### angular ssr ReferenceError: document is not defined
    https://www.jianshu.com/p/9b576f32c7a5
    问题一：window，document，navigator，或location等浏览器对象报错：如
    ReferenceError: window is not defined
    项目在服务器端渲染（这里用的是express），在node环境下是没有以上对象的。解决方案有几种：
    1、在server.ts中添加

    作者：ouxuwen
    链接：https://www.jianshu.com/p/9b576f32c7a5
    来源：简书
    著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
    
### SSR 有两个入口文件，app-client.js 和 app-server.js    https://www.cnblogs.com/BillyQin/p/7159683.html?utm_source=itdadao&utm_medium=referral
    SSR 有两个入口文件，app-client.js 和 app-server.js， 都包含了应用代码(appmodule)，
    webpack 通过两个入口文件分别打包成给服务端用的 server bundle 和给客户端用的 client bundle。

### yarn add mutation-observer // 有些库需要比如：ng-zorro-antd
    https://segmentfault.com/a/1190000018193417?utm_source=tag-newest
    一个逼格较高的angular项目就建好了！
### ERROR in ../node_modules/@angular/compiler-cli/index.d.ts:14:10 - error TS2305: Module '"@angular/compiler-cli/src/ngtools_api"' has no exported member 'NgTools_InternalApi_NG_2'.14 export { NgTools_InternalApi_NG_2 as __NGTOOLS_PRIVATE_API_2 } from './src/ngtools_api';
    1  改为 export { NgTools_InternalApi_NG2_CodeGen_Options as __NGTOOLS_PRIVATE_API_2 } from './src/ngtools_api';

### 报错D:\work\project\credit\weizhi\credit-web\dist\server\main.js:435892 a&&Aa()}}})(jQuery); ReferenceError: jQuery is not defined
    import * as $ from 'jquery'
    global['$']=$;
    -> 没有成功！
    
###报错 Angular 7 使用require 出现的问题： Cannot find name 'require'. Do you need to install...... 
    https://blog.csdn.net/LittleDragonHu/article/details/86150213
    找到tsconfig.app.json文件   
    {
      "extends": "../tsconfig.json",
      "compilerOptions": {
        "outDir": "../out-tsc/app",
        "baseUrl": "./",
        "types": [
          "node",
          "jquery"
        ]
      },
      "exclude": [
        "test.ts",
        "**/*.spec.ts"
      ]
    }
    在types中加入"node"即可
