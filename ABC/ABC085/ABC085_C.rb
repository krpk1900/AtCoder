N, Y = gets.chomp.split.map(&:to_i)

a = 0 # 10000円札の枚数
b = 0 # 5000円札の枚数
c = 0 # 1000円札の枚数

while a <= N do
  while b <= N-a do
    #p "a=#{a} b=#{b} c=#{N-a-b} sum=#{(10000*a + 5000*b + 1000*(N-a-b))}"
    if (10000*a + 5000*b + 1000*(N-a-b)) == Y
      puts "#{a} #{b} #{N-a-b}"
      exit
    end
    b += 1
  end
  b = 0
  a += 1
end
puts "#{-1} #{-1} #{-1}"
