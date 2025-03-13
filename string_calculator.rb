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

    numbers.split(/#{demlimiters}/).map(&:to_i).sum
  end
end