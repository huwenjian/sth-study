### 为何需要 Universal
    有三个主要的理由来为你的应用创建一个 Universal 版本。
    1 帮助网络爬虫（SEO）
    2 提升在手机和低功耗设备上的性能
    3 迅速显示出第一个页面


    "build": "run-s build:client build:aot build:server",
    "build:client": "ng build -prod --build-optimizer --app 0",  //生成browser文件夹
    "build:aot": "ng build --aot --app 1",                       //生成server 文件夹
    "build:server": "webpack -p",                                //生成server.js


### error

    D:\work\project\credit\weizhi\credit-web\node_modules\ngx-cookie-service\index.js:1
    (function (exports, require, module, __filename, __dirname) { export * from './cookie-service/cookie.service';
                                                                  ^^^^^^
---------
    解决 ：https://github.com/salemdar/ngx-cookie/issues/40
    yarn add @babel/cli --dev   .or.  npm install --save-dev @babel/cli

    node node_modules/babel-cli/bin/babel.js node_modules/ngx-cookie-service/ --out-dir node_modules/ngx-cookie-service/ --presets es2015




