

#### reindex
    ##1 新建索引
    elasticdump  --input=creditdb-ngram.txt  --output=http://172.16.1.72:9200/creditdb-ng  --type=mapping
    ##2 re-index
    curl -X POST "http://172.16.1.72:9200/_reindex" -d '{
      "source": {
        "index": "creditdb"
      },
      "dest": {
        "index": "creditdb-ng"
      }
    }'