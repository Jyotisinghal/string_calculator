require 'pry-byebug'

class StringCalculator
  def add_string(input)
    return 'only accepts a string' unless check_string_validation(input)
    return 'invalid input' if  input =~ /,\n/
    return 'negative value are not accepted' if check_negative_values_validation(ready_to_add_numbers(input))
    return ready_to_add_numbers(input).sum
  end

  def add(*inputs)
    sum_arr = []
    inputs.map{|str| str.split(",")}.each do |input|
      actual_input = input.join(",")
      sum_arr << add_string(actual_input)
    end
    return sum_arr
  end

  def check_string_validation(input)
    input.is_a?(String)
  end

  def check_negative_values_validation(numbers)
    numbers.select{ |i| i < 0 }.length > 0
  end

  def ready_to_add_numbers(input)
    if input =~ /\n/
      input.split(/[\n,]/).map(&:to_i)
    else
      input.split(",").map(&:to_i)
    end
  end
end
