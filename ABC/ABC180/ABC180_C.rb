require 'prime'

N = gets.chomp.to_i

class Integer
    def divisor_list
      return [1] if self == 1
      first, *rest = Prime.prime_division(self).map do |p, k|
        (0..k).map{|i| p**i}
      end
      first.product(*rest).map do |a|
        a.inject(&:*)
      end.sort
    end
  end

puts N.divisor_list