### Groovy

    可插拔的相似度算法  »
        脚本评分编辑
        最后，如果所有 function_score 内置的函数都无法满足应用场景，可以使用 script_score 函数自行实现逻辑。

        举个例子，想将利润空间作为因子加入到相关度评分计算，在业务中，利润空间和以下三点相关：

        price 度假屋每晚的价格。
        会员用户的级别——某些等级的用户可以在每晚房价高于某个 threshold 阀值价格的时候享受折扣 discount 。
        用户享受折扣后，经过议价的每晚房价的利润 margin 。







### demo
    #查询语文课后面是数学课的星期


        {
            "week": "星期一"
            "course":["语文", "数学", "英语", "地理", "历史"]
        }
        {
            "week": "星期二"
            "course":["数学"， "语文", "英语", "地理", "历史"]
        }
            {
            "week": "星期三"
            "course":["语文", "数学", "地理", "英语", "历史"]
        }
    # DSL 如下 a:
        {
        	"size": 100,
        	"query": {
        		"bool": {
        			"filter": {
        				"script": {
        					"script": "def input = _source['course'].toString(); def flag = input.indexOf('语文, 数学') != -1; return flag "
        				}
        			}
        		}
        	}
        }
        b:
        "aggs": {
            "result": {
              "terms": {
                "script": "def input = _source['course'].toString();if(input.indexOf(' 语文, 数学') != -1){input}",
              }
            }
          }
