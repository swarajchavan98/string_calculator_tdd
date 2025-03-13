# String Calculator with TDD

This project implements a simple string calculator using Test-Driven Development (TDD) principles. The `StringCalculator` class provides a method to add numbers given in a string format.

## Features

- Add numbers separated by commas or newlines.
- Support for custom delimiters.
- Raise an exception for negative numbers.

## Usage

To use the `StringCalculator` class, create an instance and call the `add` method with a string of numbers.

```ruby
calculator = StringCalculator.new
result = calculator.add("1,2,3") # returns 6
result = calculator.add("1\n2,3") # returns 6
result = calculator.add("//;\n1;2") # returns 3
```

## Handling Negative Numbers

If the input string contains negative numbers, the `add` method will raise an exception.

```ruby
begin
  calculator.add("1,-2,3")
rescue => e
  puts e.message # "negative numbers are not allowed: -2"
end
```

## Custom Delimiters

You can specify a custom delimiter by starting the string with `//` followed by the delimiter and a newline.

```ruby
result = calculator.add("//;\n1;2;3") # returns 6
```

## Running Tests

To run the tests for this project, use the following command:

```sh
ruby test_string_calculator.rb
```

Make sure you have the necessary testing framework installed.

## License

This project is licensed under the MIT License.
