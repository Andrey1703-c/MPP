def to_initials(words)
  abbreviations = words.split.map { |word| word[0].upcase }.join
  puts abbreviations
end

print "Введіть список слів: "
user_input = gets.chomp

to_initials(user_input)
