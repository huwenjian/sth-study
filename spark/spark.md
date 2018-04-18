## spark安装
> spark是scala写的 运行jvm上 java7+
> python API python3.4+
## 版本对应关系
    spark1.6.2 -> scala2.10
    spark2.0.0 -> scala2.11
    spark2.3.0 -> scala1.11.8
    ### spark安装目录下看一下jars中scala开头的jar包就可以了 ##


### spark的配置ssh-keygen 不需要每次输密码
    ssh-localhost 
    psw：
    
    ssh-keygen 回车即可 
    cd .ssh 
    touch authorized_keys
    cat id_rsa.pub > authodrized_keys 
    chmod 600 authodrized_keys 
    
### 启动集群
    启动master ./sbin/start-master.sh
    启动worker worker ./bin/spark-class
    提交作业 ./bin/spark-submit
    


    