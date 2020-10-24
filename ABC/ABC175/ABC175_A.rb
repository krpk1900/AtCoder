case input = gets.chomp
when "SSS" 
    ans = 0
when "SSR" 
    ans = 1
when "SRS" 
    ans = 1
when "SRR" 
    ans = 2
when "RSS" 
    ans = 1
when "RSR" 
    ans = 1
when "RRS" 
    ans = 2
when "RRR" 
    ans = 3
end
puts ans