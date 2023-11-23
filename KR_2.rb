
def word_count(s)
  words = s.split()  
  word_freq = Hash.new(0)
  words.each do |word|

    word_freq[word] += 1
  end

  return word_freq
end


input_string = "Це рядок для прикладу. Це рядок, який ми використовуємо для тестування функції word_count."
result = word_count(input_string)
puts result
