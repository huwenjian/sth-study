## xm 这样建立索引以后 小米科技已经排在前面了
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
## 
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
@todo 把小米科技有限公司排在最前面
      