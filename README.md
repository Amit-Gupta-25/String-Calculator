# String calculator

It helps us to add numbers in a string spearated with commas.

## Features

- Add numbers from a string
- Raise an error for negative numbers
- Handle new lines between numbers
- Support for custom delimiters

## Usage

### Installation

Clone the repository:

```bash
git clone https://github.com/Amit-Gupta-25/String-Calculator.git
```

**Usage Example**
  ```example
  require_relative 'string_calculator'
  calculator = StringCalculator.new
  puts calculator.add('1,2,3') # Output: 6
  ```

**Custom Delimiters**

 You can specify custom delimiters using the following syntax:

```bash
puts calculator.add("//;\n1;2;3") # Output: 6
```

**Handling New Lines**

New lines between numbers are also supported:

```bash
puts calculator.add("1\n2,3") # Output: 6
```

**Handling Negative Numbers**

Attempting to add negative numbers will raise an ArgumentError:

```bash
calculator.add('1,-2,3,-4') # Raises ArgumentError: Negative numbers not allowed: -2, -4
```
# Running Tests

Install RSpec if you haven't already:

```bundle
gem install rspec
```

Then, run the tests:

```rspec
rspec
```