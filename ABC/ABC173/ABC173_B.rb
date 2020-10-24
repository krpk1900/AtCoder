N = gets.chomp.to_i
ac_counter = 0
wa_counter = 0
tle_counter = 0
re_counter = 0
N.times do
    case gets.chomp
    when "AC"
        ac_counter += 1
    when "WA"
        wa_counter += 1
    when "TLE"
        tle_counter += 1
    when "RE"
        re_counter += 1
    end
end

puts "AC x #{ac_counter}"
puts "WA x #{wa_counter}"
puts "TLE x #{tle_counter}"
puts "RE x #{re_counter}"