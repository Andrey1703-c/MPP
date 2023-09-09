
def get_user_choice
  choices = ["rock", "paper", "scissors"]
  puts "Choose one: rock, paper, or scissors"
  user_choice = gets.chomp.downcase
  until choices.include?(user_choice)
    puts "Invalid choice. Choose one: rock, paper, or scissors"
    user_choice = gets.chomp.downcase
  end
  user_choice
end

def get_computer_choice
  choices = ["rock", "paper", "scissors"]
  computer_choice = choices.sample
end

def determine_winner(user_choice, computer_choice)
  if user_choice == computer_choice
    "It's a tie!"
  elsif (user_choice == "rock" && computer_choice == "scissors")
    (user_choice == "paper" && computer_choice == "rock")
    (user_choice == "scissors" && computer_choice == "paper")
    "You win!"
  else
    "Computer wins!"
  end
end

def play_game
  user_choice = get_user_choice
  computer_choice = get_computer_choice

  puts "You chose #{user_choice}"
  puts "Computer chose #{computer_choice}"

  result = determine_winner(user_choice, computer_choice)
  puts result
end

loop do
  play_game
  puts "Play again? (yes/no)"
  play_again = gets.chomp.downcase
  break unless play_again == "yes"
end

puts "Thanks for playing!"