##install
    npm install elasticdump -g



## param
    --ignore-errors=true
    --scrollTime=120m   
    --bulk=true
## src-es => tar-es
    elasticdump  --input=http://172.29.11.50:8001/creditdb --output=http://172.16.1.72:9200/creditdb    --type=mapping
    elasticdump  --ignore-errors=true --scrollTime=240m  --input=http://172.29.11.50:8001/creditdb --output=http://172.16.1.72:9200/creditdb    --type=data


## src-es => tar.txt hu564818998 hu8072 yan:906246914
    elasticdump  --input=http://172.29.11.50:8001/creditdb  --output=creditdb1.json  --type=data