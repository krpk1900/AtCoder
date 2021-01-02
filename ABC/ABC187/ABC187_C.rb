N = gets.chomp.to_i
words = []
ex_words = []
N.times do
  word = gets.chomp
  if word[0] == '!'
    # '!'を削除
    word.slice!(0)
    ex_words << word
  else
    words << word
  end
end

ex_words.each do |ex_word|
  words.each do |word|
    if ex_word == word
      puts word
      exit
    end
  end
end

puts 'satisfiable'