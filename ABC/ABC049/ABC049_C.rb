S = gets.chomp
S.reverse!

str1 = 'dream'.reverse!
str2 = 'dreamer'.reverse!
str3 = 'erase'.reverse!
str4 = 'eraser'.reverse!

loop_flag = true
while loop_flag
  # puts "S=#{S}"
  loop_flag = false
  if S == ''
    puts 'YES'
    exit
  elsif S.index(str1) == 0
    S.slice!(0, 5)
    loop_flag = true
  elsif S.index(str2) == 0
    S.slice!(0, 7)
    loop_flag = true
  elsif S.index(str3) == 0
    S.slice!(0, 5)
    loop_flag = true
  elsif S.index(str4) == 0
    S.slice!(0, 6)
    loop_flag = true
  end
end
puts 'NO'
