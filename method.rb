# method to store user_name
def user_name
    puts "Enter your name"
    name = gets.chomp.capitalize
    system "clear"
    puts " Hi #{name}"
    return name
end


#Displays welcome message
def welcome
    exit = false
    
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
        usr = user_name
    elsif 
        user_input == 'n'
        exit = true
        puts "Bye..."   
    else
        puts "invalid input"
        welcome
    end
   
    return exit
end


#Displays menu option to user
def menu
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
          welcome        
        when 4
          puts "Hope to see you again..."
        else
            puts "invalid input, please try again"
            menu
        end
end