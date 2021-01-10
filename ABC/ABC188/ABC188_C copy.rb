N = gets.chomp.to_i
A_org = gets.chomp.split.map(&:to_i)

n = N
last_loser = 0
A = A_org.dup

N.times do
  A.sort!
  p A
  (2**(n-1)).times do
    first_element = A.shift
    p first_element
    second_element = A.shift
    p second_element
    p A
    if first_element > second_element
      A << first_element
      last_loser = second_element
    else
      A << second_element
      last_loser = first_element
    end
    p A
  end

  n -= 1
end

p last_loser
p A_org
puts ( A_org.index(last_loser) + 1 )