#!/usr/bin/bash

# 입력된 파일에서 가장 많이 나오는 단어 10개와 횟수를 계산하는 스크립트

IN=$1
OUT=$2

cat $IN | tr -s " " "\n" | sort | uniq -c | sort -nr | head - 10 > $OUT

echo "분석 결과를 $OUT 파일에 저장했습니다."