#### windows下redis安装
    https://blog.csdn.net/u012343297/article/details/78839063
    
###### 1 启动redis:
    maxmemory 1024000000
    requirepass 123456
    
###### 2 启动redis:
    
    redis-server.exe redis.windows.conf
    
    
    
###### 3 redis 清空密码
    ./redis.cli 
    config set requirepass "" 
    
    
    
    
    
## linux下安装redis
         yum install redis
         
