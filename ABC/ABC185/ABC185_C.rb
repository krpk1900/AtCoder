L = gets.chomp.to_i

class Integer
  def combination(k)
    return 1 if k.zero?

    (self - k + 1..self).inject(:*) / k.factorial
  end

  def factorial
    return 1 if self.zero?

    (1..self).inject(:*)
  end
end

puts (L-1).combination(11)