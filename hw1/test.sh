#!/usr/bin/bash
mkdir -p bin output

g++ -o bin/q$1 q$1.cpp
if [ $? -ne 0 ]; then
    echo "❌ 編譯失敗"
    exit 1
fi

# test it
INPUT_FILE="input/q$1.txt"
EXPECTED_OUTPUT_FILE="ans/q$1.txt"
ACTUAL_OUTPUT_FILE="output/q$1.txt"
./bin/q$1 < "$INPUT_FILE" > "$ACTUAL_OUTPUT_FILE"

# ====== normalize 函式：清理行尾、空白等隱藏差異 ======
normalize_file() {
  sed -i 's/\r$//' "$1"            # 移除 Windows \r
  sed -i 's/[ \t]*$//' "$1"        # 移除行尾多餘空白
  sed -i -e '$a\' "$1"             # 確保結尾有換行符
}
normalize_file "$EXPECTED_OUTPUT_FILE"
normalize_file "$ACTUAL_OUTPUT_FILE"

# compare
diff -u "$EXPECTED_OUTPUT_FILE" "$ACTUAL_OUTPUT_FILE" > /dev/null
if [ $? -eq 0 ]; then
    echo "✅ Question $1 通過測資！"
else
    echo "❌ Question $1 未通過測資！差異如下："
    diff -u "$EXPECTED_OUTPUT_FILE" "$ACTUAL_OUTPUT_FILE"
fi