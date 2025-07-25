#!/usr/bin/bash
ALL_PASS=1
SCORE=0

for i in {1..4}; do
    ./test.sh $i
    if [ $? -ne 0 ]; then
        ALL_PASS=0
    else
        SCORE=$((SCORE + 25))
    fi
    echo "-----------------"
done

if [ $ALL_PASS -eq 1 ]; then
    echo "🎉 所有題目通過, 得分: ${SCORE}"
else
    echo "🤏 未完全通過, 得分: ${SCORE}"
fi