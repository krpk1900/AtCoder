N = gets.chomp.to_i
str = gets.chomp

while str != deleted_str = str.gsub('fox', '')
#  puts "str = #{str}"
#  puts "deleted_str = #{deleted_str}"
  str = deleted_str
end

puts str.length