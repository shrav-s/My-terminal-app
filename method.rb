require_relative('user_class')
require('colorize')
# method to store user_name
def user_name
  puts 'Enter your name'.light_yellow.on_black
  name = gets.chomp.capitalize
  system 'clear'
  puts " Hi #{name}".cyan.on_black.blink
  name
end

# Displays welcome message
def welcome
  puts '*************Welcome to Word Game****************'.green.on_black
  puts 'Rules of the game'.yellow.on_black
  puts ' 1. Computer presents a clue and you need guess the word in question....'.cyan.on_black
  puts ' 2. You have three attempts to guess right, fewer the number of attempts higher you score...'.cyan.on_black
  puts ' 3. Every word has three clues and one clue is revealed with every incorrect attempt'.cyan.on_black
  puts ' 4. Score more points when you guess right in the first attempt'.cyan.on_black
  puts 'Do you want to continue (y or n)?'.yellow.on_black
  user_input = gets.chomp.downcase.to_s
  response(user_input)
end

def response(user_input)
  exit = false
  case user_input
  when 'y'
    user = user_name
    user_object = User.new(user, 0)
    menu(user_object)
  when 'n'
    exit = true
  else
    puts 'invalid input'.light_red.on_black
    welcome
  end
  exit
end

# Displays menu option to user
def menu(user_object)
  puts 'Press 1. To start the game'.cyan.on_black
  puts 'Press 2. To check your score record'.cyan.on_black
  puts 'Press 3. To play as another user'.cyan.on_black
  puts 'Press 4. To exit'.cyan.on_black
  user_input = gets.chomp.to_i

  case user_input
  when 1
     user_object.play_game(user_object)
     menu(user_object)
  when 2
     puts user_object.display.magenta.on_black
  when 3
    welcome
  when 4
    puts 'Hope to see you again...'.yellow.on_black
  else
    puts 'invalid input, please try again'.light_red.on_black
    menu(user_object)
  end
end
