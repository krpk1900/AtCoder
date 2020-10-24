A, B, C, D = gets.chomp.split(' ').map(&:to_i)
if A <= D && C <= B
    puts "Yes"
else  
    puts "No"
end