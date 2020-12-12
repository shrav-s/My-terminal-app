
puts "*************Welcome to Word Game****************"
puts "Rules of the game"
puts " 1.Computer presents a clue and you need guess the word in question...."
puts " 2.You have three attempts to guess right,lesser the number of attempts higher you score..."
puts " 3.Every word has three clues and one clue is revealed with every incorrect attempt"
puts " 4.Score more points when you guess right in the first attempt"
 
puts "Press y to Continue? (y/n)"
    
user_input = gets.chomp.downcase
    if user_input == "n"
        puts "Bye..."     
    else
        puts "Enter your name"
        user_name = gets.chomp.capitalize
        puts " Hi #{user_name}"
      end





# case user_input
# when 1
#     user_name = gets.chomp.downcase
#     puts ""