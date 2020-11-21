N = gets.chomp.to_i
Caa = gets.chomp
Cab = gets.chomp
Cba = gets.chomp
Cbb = gets.chomp

ans = []
s = 'AB'
i = 0

while s.length < N
  ans[i].push(s.insert(i, Caa)) if s[i]=='A' && s[i+1]=='A'
  ans[i].push(s.insert(i, Cab)) if s[i]=='A' && s[i+1]=='B'
  ans[i].push(s.insert(i, Cba)) if s[i]=='B' && s[i+1]=='A'
  ans[i].push(s.insert(i, Cbb)) if s[i]=='B' && s[i+1]=='B'
  i += 1
end

p ans