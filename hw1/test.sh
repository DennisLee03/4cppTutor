#!/usr/bin/bash
mkdir -p bin output

g++ -o bin/q$1 q$1.cpp
if [ $? -ne 0 ]; then
    echo "❌ Compilation failed"
    exit 1
fi

INPUT_FILE="input/q$1.txt"
EXPECTED_FILE="ans/q$1.txt"
ACTUAL_FILE="output/q$1.txt"
> "$ACTUAL_FILE"  # 清空舊輸出

# Read and process line-by-line
paste "$INPUT_FILE" "$EXPECTED_FILE" | while IFS=$'\t' read -r input_line expected_output; do
    # Run the program with the single input line
    actual_output=$(echo "$input_line" | ./bin/q$1)

    # Normalize: remove trailing whitespace and ensure single newline
    actual_output=$(echo "$actual_output" | sed 's/[[:space:]]*$//')

    echo "$actual_output" >> "$ACTUAL_FILE"
done

# Normalize both files for safe diff
normalize_file() {
  sed -i 's/\r$//' "$1"
  sed -i 's/[ \t]*$//' "$1"
  sed -i -e '$a\' "$1"
}
normalize_file "$EXPECTED_FILE"
normalize_file "$ACTUAL_FILE"

# Compare
diff -u "$EXPECTED_FILE" "$ACTUAL_FILE" > /dev/null
if [ $? -eq 0 ]; then
    echo "✅ Question $1 passed all test cases!"
else
    echo "❌ Question $1 failed the test cases. Differences shown below:"
    diff -u "$EXPECTED_FILE" "$ACTUAL_FILE"
fi
