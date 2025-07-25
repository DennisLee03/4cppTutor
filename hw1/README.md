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
- Use `cin` for input and `cout` for output.
- **No prompt messages** are needed for input.
- Output must **strictly match** the required format to pass validation.

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
    $ ./q1
    Dennis
    Hello Dennis!
    ```
- **Caution**: Input will not contain whitespace.

---

### 🔹 Question 2 - Temperature Transformations
- **Input**: A `float` representing temperature in Celsius (°C).
- **Output**:
    - (<value in ℉>, <value in K>)
- **Conversion Formulas**:
    - ℉ = 1.8 × ℃ + 32
    - K = ℃ + 273.15
- **Example**:
    ```bash
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
    $ ./q3
    42
    Even
    ```
    ```bash
    $ ./q3
    13
    Odd
    ```
- **Hint**: Use the modulo operator `%` to check divisibility.

---

### 🔹 Question 4 - Accumulate from 1 to N
- **Task**: Given an integer `n`, compute the sum of integers from 1 to `n`.
- **Input**: A single positive integer `n`.
- **Output**: The sum of numbers from 1 to `n`.
- **Example**:
    ```bash
    $ ./q4
    5
    15
    ```
    ```bash
    $ ./q4
    100
    5050
    ```
- **Hint**: You can use a loop or the formula `n * (n + 1) / 2`.