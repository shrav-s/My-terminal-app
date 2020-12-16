require_relative('game_class')
# require 'json'

class User
  user_record = {}
  attr_accessor :user_record
     
  def initialize(name, score)
    # @user_record = Hash.new(0)
    #  @user_record= {:name => name}
    #  @user_record[:score]=score
    # @user_record.store("name",name)
    # @user_record.store("score",score)
     @user_record = { "name" => name, "score" => score }
    #  @user_record = Hash.new {|name,score| @user_record[k] = k.to_i*10} 
    # @user_record = { "name" => "abc", "score" => 120 }
  end

  def play_game(userobj)
    game_object = Game.new
    game_object.start_game(userobj)
  end

#   # def check_score; end

#   # def change_name; end

#   # def exit; end

  def display
   return  "Hi #{@user_record['name']} your total score is #{user_record['score']}"
  end

  def check_user_exist(username)
   all_users_records ={}
    if !(File.exist?("user_database.json"))
       File.new("user_database.json",  "w+")
    end
    file = File.read("user_database.json")
    data_hash = JSON.parse(file)
   # file_data = file.readlines.map{|name| name.strip }
    
    #   name.strip
    #   all_users_records[":name"] = name 
    # }
    # Hash.try_convert(file_data)

    return data_hash
  end

#   def add_user(username)
#     return "true or false"
#   end
  
#   def update_score(name, score)
#     return "true or false"
#   end

#   def read_user(user)
#     return "#{@user_record}"
#   end

  def write_to_file(user_record)

    # file = File.read("user_database.json")
    # data_hash = JSON.parse(file)
    puts user_record
    # data_hash.push(user_record)
    File.open("user_database.json","a") do |f|
    f.write(user_record.to_json)
  # f.puts JSON.pretty_generate(user_record)
    end
  end
end

# niki = User.new("555", 20)
#  puts niki.user_record
#  niki.play_game(niki)
#  niki.write_to_file(niki.user_record)
# avinash = User.new("456", 100)
# avinash.write_to_file(avinash.user_record)
# puts niki.check_user_exist("hh")
#puts niki.display
#puts niki.user_record.to_json


