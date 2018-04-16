
# 构建ES索引
    
    "createTime":{
        "type":"date",
        "format":"strict_date_optional_time || epoch_millis"
     },
     "tags":{
        "type":"text"
     } 
     text 可以直接存储数组
     
*  有限集数据 可以设计为数字 integer</br>

       # ik分词
         "value":{
            "type":"text",
            "analyzer":"ik_max_word",
            "search_analyzer":"ik_max_word"
            }         
# search-as-you-type
    

# 基于es构建搜索引擎

# 使搜索引擎结果集优化

# 解决中文分词问题
