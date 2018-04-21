## json -> es
      linux下的导入命令为：
    
          curl -XPOST 'http://172.16.1.72:9200/creditdb/_bulk?pretty' --data-binary "@/home/dd/accounts.json"
    
          windows下的curl需要先下载windows版的curl，再输入命令：
          ### OUTOFMEMERY
          curl -XPOST  http://172.16.1.72:9200/creditdb/_bulk?pretty --data-binary "@D:\work\data\creditdb1.json" 