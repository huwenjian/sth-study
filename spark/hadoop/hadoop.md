## windows 安装hadoop  (成功)
    https://blog.csdn.net/u014695188/article/details/53858456
    
## windows spark txtWrite error 604 （失败）
    在写入临时文件后，执行shell命令时报错出现null command，由于没有配置hadoop在windows相关的winutils.exe命令文件，下载好该文件的后可以配置HADOOP_HOME环境变量
    [python] view plain copy
    HADOOP_HOME=D:/javalibs/hadoopbin  
    或者在具体应用程序代码中加入
    [java] view plain copy
    System.setProperty("hadoop.home.dir","D:/javalibs/hadoopbin" )  
    其中winutils.exe相关文件放在D:/javalibs/hadoopbin/的bin/目录下    