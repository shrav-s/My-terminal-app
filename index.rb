require_relative("method.rb")


puts "*************Welcome to Word Game****************"
puts "Rules of the game"
puts " 1. Computer presents a clue and you need guess the word in question...."
puts " 2. You have three attempts to guess right, fewer the number of attempts higher you score..."
puts " 3. Every word has three clues and one clue is revealed with every incorrect attempt"
puts " 4. Score more points when you guess right in the first attempt"
 
puts "Continue to play? (y/n)"

user_input = (gets.chomp.downcase).to_s
    if 
        user_input == 'y'
        user_name
    elsif 
        user_input == 'n'
        puts "Bye..."   
    else
        puts "invalid input"
    end

puts "Press 1. To start the game"
puts "Press 2. To check your score record"
puts "Press 3. To play as another user"
puts "Press 4. To exit"
user_input = gets.chomp.to_i

case user_input
    when 1
      puts "start game"
    when 2
      puts "your game history so far"
    when 3
      user_name         
    when 4
      puts "Hope to see you again..."
    else
        puts "invalid input, please try again"
end

