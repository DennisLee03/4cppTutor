#!/usr/bin/bash
#!/usr/bin/bash

ALL_PASS=1
SCORE=0

# 判斷是否有參數
if [ "$1" = "half" ]; then
    START=1
    END=2
else
    START=1
    END=4
fi

for ((i=START; i<=END; i++)); do
    ./test.sh $i
    if [ $? -ne 0 ]; then
        ALL_PASS=0
    else
        SCORE=$((SCORE + 25))
    fi
    echo "-----------------"
done

if [ $ALL_PASS -eq 1 ]; then
    echo "🎉 All tests passed! Total score: ${SCORE}"
else
    echo "🤏 Some tests failed. Total score: ${SCORE}"
fi
