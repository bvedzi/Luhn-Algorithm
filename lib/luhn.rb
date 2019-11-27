module Luhn
  def self.is_valid?(number)
    #WRITE YOUR SOLUTION HERE
  digits = number.chars.map(&:to_i)
  check = digits.pop

  sum = digits.reverse.each_slice(2).flat_map do |x, y|
    [(x * 2).divmod(10), y || 0]
  end.flatten.inject(:+)

  check.zero? ? sum % 10 == 0 : (10 - sum % 10) == check
end
  end
