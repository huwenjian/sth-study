### maven坐标

         <groupId>org.springframework.boot</groupId>           工程组标识，在一个组织或者项目中通常是唯一的。
         <artifactId>spring-boot-starter-parent</artifactId>   工程的标识。通常是工程的名称。
         <version>1.5.9.RELEASE</version>                      工程的版本号。在artifact的仓库中，区分不同的版本。


### maven常用命令

    mvn -v       查看maven版本 也用来检测maven是否安装成功
    mvn compile  编译 将java源文件编译成class文件
    mvn test     执行test目录下的测试用例
    mvn package  打包 将java工程工程打成jar包
    mvn clean    清理环境 清除target文件夹
    mvn install  安装 将当前项目安装到maven的本地仓库中

### 传递依赖与排除依赖
    传递依赖: 如果我们的项目引用了一个jar包，而jar包又引用了其他jar包。那么在默认情况下 项目编译时 maven会把直接引用和间接引用的jar包都打到本地。
    排除依赖: 如果我们只想下载直接引用的jar包，那么需要在pom.xml中做如下配置（给出需要排除的坐标）

    <dependency>
        <groupId>org.apache.hbase</groupId>
        <artifactId>hbase</artifactId>
        <version>0.94.17</version>
        <exclusions>
            <exclusion>
                <groupId>commons-logging</groupId>
                <artifactId>commons-logging</artifactId>
            </exclusion>
        </exclusions>
    </dependency>


### 依赖冲突
    1 短路优先
    2 声明优先

### 多模块项目/聚合
    聚合子模块 使用modules标签
        <moudles>
            <moudle>ad-eureka</moudle>
            <moudle>ad-gateway</moudle>
        </moudles>
    父模块统一管理依赖包 使用dependencyManagement标签
    子模块需要在pom中声明父模块 使用parent 标签





