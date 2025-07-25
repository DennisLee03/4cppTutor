# 📝 Homework 1 Specification

## ✅ General Instructions
- Use **WSL (Windows Subsystem for Linux)** to compile and run your programs:
    ```bash
    $ g++ -o q{number} q{number}.cpp
    $ ./q{number}
    ```
- Use `cin` for input and `cout` for output.
- **No prompt messages** are needed for input.
- Output must **strictly match** the required format to pass validation.

---

## 🔹 Question 1 - Hello World!
- **Input**: A single `string` (e.g., `"Dennis"`, `"Nathan"`).
- **Output**: `Hello <name>!`
- **Notes**:
  - Include `#include <string>`.
  - Use `std::string` to store the name.
- **Example**:
    ```bash
    $ ./q1
    Dennis
    Hello Dennis!
    ```
- **Caution**: Input will not contain whitespace.

---

## 🔹 Question 2 - Temperature Transformations
- **Input**: A `float` representing temperature in Celsius (°C).
- **Output**:
    - First line: `Fahrenheit: <value>`
    - Second line: `Kelvin: <value>`
- **Conversion Formulas**:
    - ℉ = 1.8 × ℃ + 32
    - K = ℃ + 273.15
- **Example**:
    ```bash
    $ ./q2
    25
    Fahrenheit: 77
    Kelvin: 298.15
    ```

---

## 🔹 Question 3 - Even or Odd Number
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

## 🔹 Question 4 - Accumulate from 1 to N
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