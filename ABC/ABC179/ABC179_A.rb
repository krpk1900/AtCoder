S = gets.chomp
last_char = S[-1,1]
if last_char == "s"
    plural = S + "es"
else
    plural = S + "s"
end
puts plural