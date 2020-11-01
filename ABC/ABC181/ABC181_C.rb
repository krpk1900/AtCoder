N = gets.chomp.to_i

original_coordinate = []
for i in 1..N do
    original_coordinate << gets.chomp.split.map(&:to_i)
end


for i in 0..N-1 do
    for j in 0..i-1 do
        for k in 0..j-1 do
            x1, y1 = original_coordinate[i]
            x2, y2 = original_coordinate[j]
            x3, y3 = original_coordinate[k]
            x1 -= x3
            x2 -= x3
            y1 -= y3
            y2 -= y3
            if x1 * y2 == x2 * y1
                puts "Yes"
                exit
            end
        end
    end
end
puts "No"