###  Reindex  https://blog.csdn.net/it_lihongmin/article/details/78601697
      另外关于索引数据，大家之前经常重建，数据源在各种场景，重建起来很是头痛，那就不得不说说现在新加的Reindex接口了，Reindex可以直接在Elasticsearch集群里面对数据进行重建，如果你的mapping因为修改而需要重建，又或者索引设置修改需要重建的时候，借助Reindex可以很方便的异步进行重建，并且支持跨集群间的数据迁移。
       
       比如按天创建的索引可以定期重建合并到以月为单位的索引里面去。
       
       当然索引里面要启用_source。
       
       来看看这个demo吧，重建过程中，还能对数据就行加工。
       POST _reindex
       {
         "source": {
           "index": "old_index"
         },
         "dest": {
           "index": "new_index"
         }
       }
       win: curl -XPOST '_reindex'