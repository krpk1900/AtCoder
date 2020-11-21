S, P = gets.chomp.split.map(&:to_i)

class Integer
  def divide2(include1=false)
    ar = []
    s = include1 ? 1 : 2
    for i in s..(self ** 0.5)
      ar.push([i, self / i]) if (self % i).zero?
    end
    ar
  end
end

P.divide2(true).each do |a|
  if (a[0]+a[1]) == S
    puts 'Yes'
    exit
  end
end
puts 'No'