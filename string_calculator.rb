class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    
    # These are our default delimiters
    demlimiters = /[\n,]/
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      demlimiters = Regexp.escape(parts[0][2..])
      numbers = parts[1]
    end

    numbers_arr = numbers.split(/#{demlimiters}/).map(&:to_i)

    negatives = numbers_arr.select { |num| num.negative? }
    raise "negative numbers are not allowed: #{negatives.join(", ")}" unless negatives.empty?

    numbers_arr.sum
  end
end