##  以下测试 都是非人名 情况下
####  1 这样建立索引以后 小米科技已经排在前面了 如果要自定义排名的话  1ms
    {
      "query": {
        "bool": {
          "should": [
            {
              "term": {
                "Name": "小米科技"
              }
            }
          ],
          "minimum_should_match": 1,
          "boost": 1
        }
      },
    "_source": [
        "Name",
        "OperName",
        "City",
        "regist_capi"
      ],
      "from": 1,
      "size": 100      
    }
#### 2 这个query_string 查询方式 比1 速度会慢很多 3ms 
    {
      "profile": true,
      "query": {
        "query_string": {
          "fields": [
            "Name"
          ],
          "query": "小米科技"
        }
      },
      "_source": [
        "Name",
        "OperName",
        "City",
        "regist_capi"
      ],
      "from": 1,
      "size": 100
    }
#### 3 todo 这个查询语句可用来根据 Mapping 动态组装可人工定义排名语句 query_string + term 1ms 左右
     {
       "profile": true,
       "query": {
         "bool": {
           "must": [
             {
               "query_string": {
                 "default_field": "Name",
                 "query": "小米科技"
               }
             }
           ],
           "should": [
             {
               "term": {
                 "KeyNo": "0d180abd7096e3f6a501d27082b61a60"
               }
             }
           ]
         }
       },
       "_source": [
         "Name",
         "OperName",
         "City"
       ]
     }
#### 4 上述情况是在 将小米科技分词以后 这个测试 是不用添加任何词典 基本能达到预期 3ms 注意：默认Name一个字段 效果还可以
    {
           "profile": true,
           "query": {
             "bool": {
               "should": [
                 {
                   "query_string": {
                     "default_field": "Name",
                     "query": "杰小米"
                   }
                 }
               ]
             }
           },
           "_source": [
             "Name",
             "OperName",
             "City"
           ]
         }
#### 5 改进4 查询所有字段加上权重 指定查询时为ik smart
    {
      "profile": true,
      "query": {
        "bool": {
          "should": [
            {
              "query_string": {
                "fields": [
                  "Name^1",
                  "_all^0.9"
                ],
                "query": "杰小米"
              }
            }
          ]
        }
      },
      "_source": [
        "Name",
        "OperName",
        "City"
      ]
    }  
    
#### 6 tree like 小米之家科技有限公司吉林市第二分公
    像这种查询 在企查查里面 做的就很好 好像perfix       
    
#### 7 针对个别优化 需要在前端 再次按照资产进行排序       