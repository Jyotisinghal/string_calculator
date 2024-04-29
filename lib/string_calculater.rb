class StringCalculator
  def add(input)
    numbers = input.split(",").map(&:to_i)
    return numbers.sum
  end
end
