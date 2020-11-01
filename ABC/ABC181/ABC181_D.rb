sum = 0
for i in 1..125 do
    sum += 8
    p sum.to_s.split('').sort
end