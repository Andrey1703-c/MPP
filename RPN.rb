def infix_to_rpn(expression)
  precedence = {'+' => 1, '-' => 1, '*' => 2, '/' => 2, '^' => 3}
  stack = []
  output = []

  expression = expression.gsub(/\s+/, '') # Видалимо всі пробіли з виразу

  expression.each_char do |char|
    if char.match?(/\d/) || char.match?(/\./)
      output << char
    elsif char.match?(/[+\-*^]/)
      while !stack.empty? && stack.last.match?(/[+\-*^]/) && precedence[char] <= precedence[stack.last]
        output << stack.pop
      end
      stack << char
    elsif char == '('
      stack << char
    elsif char == ')'
      while !stack.empty? && stack.last != '('
        output << stack.pop
      end
      stack.pop
    end
  end

  while !stack.empty?
    output << stack.pop
  end

  return output.join(' ')
end


puts "Введіть математичний вираз:"
user_input = gets.chomp

rpn_expression = infix_to_rpn(user_input)
puts "input --> #{user_input}"
puts "output --> #{rpn_expression}"

gets.chomp
