require_relative('game_class')
require_relative('user_class')
require_relative('user_ops_class')
require('colorize')

# require ('tty-prompt')
# method to store user_name
def user_name
  puts 'Enter your name'.light_yellow.on_black
  begin
  name = gets.chomp.capitalize
  system 'clear'
  raise ArgumentError, "Name must not be empty" if name.empty?
  puts " Hi #{name}".cyan.on_black.blink
  rescue StandardError => e
    puts "An error occurred: #{e.inspect}"      
  retry
  end
  return name
end

# Displays welcome message
def welcome
  puts "
░█──░█ █▀▀ █── █▀▀ █▀▀█ █▀▄▀█ █▀▀ 　 ▀▀█▀▀ █▀▀█ 
░█░█░█ █▀▀ █── █── █──█ █─▀─█ █▀▀ 　 ──█── █──█ 
░█▄▀▄█ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀▀ ▀───▀ ▀▀▀ 　 ──▀── ▀▀▀▀".yellow.on_black
  puts "
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
─██████──────────██████─██████████████─████████████████───████████████──────██████████████─██████████████─██████──────────██████─██████████████─
─██░░██──────────██░░██─██░░░░░░░░░░██─██░░░░░░░░░░░░██───██░░░░░░░░████────██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██████████████░░██─██░░░░░░░░░░██─
─██░░██──────────██░░██─██░░██████░░██─██░░████████░░██───██░░████░░░░██────██░░██████████─██░░██████░░██─██░░░░░░░░░░░░░░░░░░██─██░░██████████─
─██░░██──────────██░░██─██░░██──██░░██─██░░██────██░░██───██░░██──██░░██────██░░██─────────██░░██──██░░██─██░░██████░░██████░░██─██░░██─────────
─██░░██──██████──██░░██─██░░██──██░░██─██░░████████░░██───██░░██──██░░██────██░░██─────────██░░██████░░██─██░░██──██░░██──██░░██─██░░██████████─
─██░░██──██░░██──██░░██─██░░██──██░░██─██░░░░░░░░░░░░██───██░░██──██░░██────██░░██──██████─██░░░░░░░░░░██─██░░██──██░░██──██░░██─██░░░░░░░░░░██─
─██░░██──██░░██──██░░██─██░░██──██░░██─██░░██████░░████───██░░██──██░░██────██░░██──██░░██─██░░██████░░██─██░░██──██████──██░░██─██░░██████████─
─██░░██████░░██████░░██─██░░██──██░░██─██░░██──██░░██─────██░░██──██░░██────██░░██──██░░██─██░░██──██░░██─██░░██──────────██░░██─██░░██─────────
─██░░░░░░░░░░░░░░░░░░██─██░░██████░░██─██░░██──██░░██████─██░░████░░░░██────██░░██████░░██─██░░██──██░░██─██░░██──────────██░░██─██░░██████████─
─██░░██████░░██████░░██─██░░░░░░░░░░██─██░░██──██░░░░░░██─██░░░░░░░░████────██░░░░░░░░░░██─██░░██──██░░██─██░░██──────────██░░██─██░░░░░░░░░░██─
─██████──██████──██████─██████████████─██████──██████████─████████████──────██████████████─██████──██████─██████──────────██████─██████████████─
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────".green.on_black
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
    user = user_name()
    
    userops=UserOps.new("user_database.json")
     if(userops.check_user_exist(user))   
       uservals = userops.get_user(user)
       user_object = User.new(uservals[0],uservals[1] )
     else
       userops.add_user(user)
      # uservals = userops.get_user(user)
       user_object = User.new(user, 0)
     end
        
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
  begin
    user_input = gets.strip
    raise ArgumentError, "Select and enter a value between 1 and 4" if user_input.empty?
    rescue  StandardError => e
    puts "An error occurred: #{e.inspect}"      
    retry    
  end
  case user_input
  when "1"
    game_object = Game.new
    game_object.start_game(user_object)
    userops=UserOps.new("user_database.json")
    data_arr_1= userops.read_file

    if data_arr_1.length > 0
            data_arr_1.each do |item|
                if (item["name"] == user_object.user_record["name"])
                  item["score"] =user_object.user_record["score"]
            break
                end
            end
    end
     userops.write_to_file(data_arr_1)
     menu(user_object)
  when "2"
     puts user_object.display.magenta.on_black
     menu(user_object)
  when "3"
    welcome
  when "4"
    puts 'Hope to see you again...'.yellow.on_black
  else
    puts 'invalid input, please try again'.light_red.on_black
    menu(user_object)
  end
end
