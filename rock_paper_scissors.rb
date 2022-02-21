def play_game
  puts 'Lets play Rock Paper Scissor Game'

  puts 'Please choose your weapon, options: (rock, paper, scissors)'
  user_choice = gets.chomp.downcase
  if %w[rock paper scissors].include?(user_choice)
    puts "You Chose #{user_choice}"

    # Computer choice
    cc = rand(1..3)

    choice = case cc
             when 1
               'rock'
             when 2
               'paper'
             else
               'scissors'
             end

    if choice == user_choice
      puts "That's a draw, we both chose #{choice}, lets try again"
      play_game
    elsif choice == 'rock' && user_choice == 'paper'
      puts 'You won, paper wraps rock'
    elsif choice == 'rock' && user_choice == 'scissors'
      puts 'You lose. Rock crashes scissors'
    elsif choice == 'paper' && user_choice == 'rock'
      puts 'You lose, paper wraps rock'
    elsif choice == 'paper' && user_choice == 'scissors'
      puts 'You won, scissors cuts through paper'
    elsif choice == 'scissors' && user_choice == 'rock'
      puts 'You won, rock crashes through scissors'
    else
      puts 'You lose, scissors cuts through paper'
    end

  else
    puts 'Do you really want to play this game'
  end
end

play_game
