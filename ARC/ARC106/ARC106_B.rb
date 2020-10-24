N, K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

ans = 0
for x in 1..K do
    for l in 1..N-1 do
        for r in l+1..N do
            #puts A[l-1]
            ans += (A[l-1]+A[r-1])**x
        end
    end
    puts (ans % 998244353)
    ans = 0
end