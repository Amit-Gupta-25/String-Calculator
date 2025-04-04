# frozen_string_literal: true

# Class is string calculator.
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter, numbers = extract_delimiter(numbers)
    numbers_array = parse_numbers(numbers, delimiter)

    validate_numbers(numbers_array)

    numbers_array.sum
  end

  private

  def extract_delimiter(value)
    if value.start_with?('//')
      delimiter = value[2]
      value = value.split("\n", 2).last
    else
      delimiter = ','
    end
    [delimiter, value]
  end

  def parse_numbers(numbers, delimiter)
    numbers.gsub("\n", delimiter).split(delimiter).map(&:to_i)
  end

  def validate_numbers(numbers_array)
    negative_numbers = numbers_array.select(&:negative?)
    raise ArgumentError, "Negative numbers not allowed: #{negative_numbers.join(', ')}" if negative_numbers.any?
  end
end
