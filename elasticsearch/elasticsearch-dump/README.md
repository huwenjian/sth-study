##install
    npm install elasticdump -g


## src-es => tar-es
    elasticdump   --bulk=true --ignore-errors=true  --scrollTime=120m --input=http://172.29.11.50:8001/creidtdb --output=http://172.16.1.72:9200/creditdb    --type=analyzer


## src-es => tar.txt hu564818998 hu8072 yan:906246914
    elasticdump  --input=http://172.29.11.50:8001/creditdb  --output=creditdb.json  --type=data