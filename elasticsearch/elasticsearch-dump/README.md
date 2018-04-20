##install
    npm install elasticdump -g
    在linux上 安装，步骤如下：
    
      1) yum install epel-release  
    
       2) yum install nodejs  
       3) yum install nodejs npm  
       4) npm install elasticdump  
    
    使用命令行：
    
       1) cd node_modules/elasticdump/bin  
       2)./elasticdump  --input=http://192.168.10.10:9200/or --output=http://192.168.10.20:9200/newOr --type=data  


## param
    --ignore-errors=true
    --scrollTime=120m   
    --bulk=true
    --searchBody '{"query":{"term":{"Name": "小米"}}}'
    --params='{"preference" : "_shards:0"}'
## src-es => tar-es
    elasticdump  --input=http://172.29.11.50:8001/creditdb --output=http://172.16.1.72:9200/creditdb    --type=mapping
    elasticdump  --input=http://172.16.1.72:9200/creditdb --output=mapping.txt    --type=mapping
    elasticdump  --ignore-errors=true --scrollTime=240m  --input=http://172.29.11.50:8001/creditdb --output=http://172.16.1.72:9200/creditdb    --type=data 
    --searchBody '{"query":{"term":{"Name": "小米"}}}'


## src-es => tar.txt hu564818998hu1137 yan:906246914 hu9106075965b2e2p
    可组装参数: 
    --ignore-errors=true --scrollTime=240m
    --searchBody '{"query":{"term":{"Name": "小米"}}}'
    elasticdump  --input=http://172.29.11.50:8001/creditdb  --output=creditdb1.json  --type=data
    ##官方文档
    elasticdump  --input=http://172.29.11.50:8001/creditdb  --output=credit-xiaomi.json   --searchBody '{"query":{"term":{"Name": "小米"}}}'
    ##windows cmd
    elasticdump  --input=http://172.29.11.50:8001/creditdb  --output=credit-xiaomi.json  --searchBody={\"query\":{\"term\":{\"Name\":\"小米\"}}}
    # from size 没有作用 
    elasticdump  --input=http://172.29.11.50:8001/creditdb  --output=credit-xiaomi3.json  --searchBody={\"query\":{\"term\":{\"Name\":\"小米\"}},\"sort\":{\"regist_capi\":{\"order\":\"desc\"}},\"from\":1,\"size\":1}
    
    
### txt -> es
    elasticdump  --input=credit-xiaomi.json  --output=http://172.16.1.72:9200/creditdb3  --type=data 
    elasticdump  --input=mapping.txt     --output=http://172.16.1.72:9200/creditdb1   --type=mapping