# 📝 Homework 1 Specification

## ✅ General Instructions
- This homework is split into **two parts** since not all content will be covered in today's lecture:
  - **Part 1** (due 7/25): Questions 1 and 2
  - **Part 2** (due 8/4): Questions 3 and 4
- Use **WSL (Windows Subsystem for Linux)** to compile and run your programs:
    ```bash
    $ wsl
    $ g++ -o q{number} q{number}.cpp
    $ ./q{number}
    ```
- Use `cin` for input and `cout` for output. Remember `#include<iostream>` and `using namespace std;`
- **No prompt messages** are needed for input.
- Output must **strictly match** the required format to pass validation.
- Note: If you see "^M" or "bad interpreter", run: `dos2unix *.sh`

---

## 🧪 Script Usage

### ▶️ `test.sh`
This script compiles and tests a single question:
```bash
$ ./test.sh 1
```
It will:
- Compile `q1.cpp` into `bin/q1`
- Feed the input from `input/q1.txt`
- Compare the output with `ans/q1.txt`
- Show ✅ if the result matches, ❌ otherwise

### ✅ `validate.sh`
This script runs tests for all questions (or just Part 1 if you pass `half`):
```bash
$ ./validate.sh        # Run q1 ~ q4
$ ./validate.sh half   # Only run q1 and q2
```

---

## 📦 Part 1: Basic Input & Math

### 🔹 Question 1 - Hello World!
- **Input**: A single `string` (e.g., `"Dennis"`, `"Nathan"`).
- **Output**: `Hello <name>!`
- **Notes**:
  - Do `#include <string>` and `using namespace std;`.
  - Then use `string` to store the name.
- **Example**:
    ```bash
    $ g++ -o q1 q1.cpp
    $ ./q1
    Dennis
    Hello Dennis!
    ```
- **Caution**: Input will not contain whitespace.

---

### 🔹 Question 2 - Temperature Transformations
- **Input**: A `float` representing temperature in Celsius (°C).
- **Output**: A single line in the format: (F_value, K_value)
    - F_value and K_value indicate ℉ and K respectively. 
- **Conversion Formulas**:
    - ℉ = 1.8 × ℃ + 32
    - K = ℃ + 273.15
- **Example**:
    ```bash
    $ g++ -o q2 q2.cpp
    $ ./q2
    25
    (77, 298.15)
    ```

---

## 📦 Part 2: Conditionals & While-Loops

### 🔹 Question 3 - Even or Odd Number
- **Definition**: An **even number** is divisible by 2; otherwise, it’s **odd**.
- **Input**: An integer.
- **Output**: `Even` or `Odd`
- **Examples**:
    ```bash
    $ g++ -o q3 q3.cpp
    $ ./q3
    42
    42 is EVEN!
    ```
    ```bash
    $ ./q3
    13
    13 is ODD!
    ```
- **Hint**: Use the modulo operator `%` to check divisibility.

---

### 🔹 Question 4 - Accumulate from 1 to N
- **Task**: Given an integer `n`, compute the sum of integers from 1 to `n`.
- **Input**: A single positive integer `n`.
- **Output**: The sum of numbers from 1 to `n`.
- **Example**:
    ```bash
    $ g++ -o q4 q4.cpp
    $ ./q4
    5
    15
    ```
    ```bash
    $ g++ -o q4 q4.cpp
    $ ./q4
    100
    5050
    ```
- **Hint**: You can use a loop or the formula `n * (n + 1) / 2`.