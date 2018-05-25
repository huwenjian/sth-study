### elasticsearch 运维记录
    https://blog.csdn.net/zxf_668899/article/details/53945145


#### elasticsearch shard UNASSIGNED 修复 
    https://blog.csdn.net/wer724853863/article/details/78533105
    
#### 查看es集群健康状态
    http://172.29.11.50:8001/_cluster/health/?pretty
    
#### 查看所有分片状态
    curl -XGET http://172.29.11.50:8001/_cat/shards  

#### 查看master节点的唯一标识       
    curl -XGET http://172.29.11.50:8001/_nodes/process?pretty
    
#### 执行rerouter    
    curl -XPOST 'http://172.29.11.50:8001/_cluster/reroute' -d '{
        "commands" : [ {
        "allocate" : {
        "index" : "creditdb",
        "shard" : 1,
        "node" : "xhsnode-3",
        "allow_primary" : true
         }
     }] 
    }'
    
##   查找原因    
#### 手动控制分片数量
     http://rockelixir.iteye.com/blog/1890872
    
#### 磁盘空间引起ES集群shard unassigned的处理过程
     https://www.jianshu.com/p/443cf6ce87d5  
     
#### 优化ElasticSearch之合理分配索引分片
     https://segmentfault.com/a/1190000008868585     
     
#### 通过查看集群shard的api可以看到每个shard的存储大小：
     curl -XGET 'http://172.29.11.50:8001/_cat/allocation?v&pretty'    