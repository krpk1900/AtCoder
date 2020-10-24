N = gets.chomp.to_i

a = 1
b = 1
for a  in 1..10**18 do
    for b in 1..10**18 do
        if 3**a + 5**b == N then
            puts "#{a} #{b}"
            exit
        end            
        break if 3**a + 5**b > N
    end
    if 3**a > N then
        puts "-1"
        exit
    end
end

