#### n-gram 分词器
    优缺点： https://www.cnblogs.com/cdsj/p/5720391.html
    
    
    
    
    
    
    
    
#### index 一直分分词
    curl -X PUT "http://172.16.1.72:9200/ngram" -d '{
    	"settings": {
    		"analysis": {
    			"analyzer": {
    				"ngram_analyzer": {
    					"tokenizer": "ngram_tokenizer"
    				}
    			},
    			"tokenizer": {
    				"ngram_tokenizer": {
    					"type": "ngram",
    					"min_gram": 1,
    					"max_gram": 10,
    					"token_chars": ["letter", "digit"]
    				}
    			}
    		}
    	},
    	"mappings": {
    		"_default_": {
    			"properties": {
    				"Name": {
    					"type": "string",
    					"analyzer": "ngram_analyzer"
    				}
    			}
    		}
    	}
    }'
    
#### test 
    http://172.16.1.72:9200/ngram/_analyze?analyzer=ngram_analyzer&text=中国经济信息社    
    