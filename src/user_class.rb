# require_relative('game_class')
require 'json'

class User 
  attr_accessor :user_record     
  def initialize(name, score)
     @user_record = {}
    if name && score
       @user_record = { "name" => name, "score" => score }
    end
  end

  def display
   return  "Hi #{@user_record['name']} your total score is #{user_record['score']}"
  end

 

  def add_user(username)
    return "true or false"
  end
  
  def update_score(name, score)
    return "true or false"
  end

  def read_user(user)
    return "#{@user_record}"
  end

  end

 

