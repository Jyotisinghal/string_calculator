class StringCalculator
  def add(input)
    return 'only accepts a string' unless input.is_a?(String)
    numbers = input.split(",").map(&:to_i)
    negatives = numbers.select{ |i| i < 0 }
    return 'negative value are not accepted' if negatives.length > 0
    return numbers.sum
    
  end
end
