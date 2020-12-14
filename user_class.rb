

require_relative('game_class')
class User
  user_record = {}
  attr_accessor :user_record

  def initialize(name, score)
    @user_record = { 'name' => name, 'score' => score }
  end

  def play_game(userobj)
    game_object = Game.new
    game_object.start_game(userobj)
  end

  def check_score; end

  def change_name; end

  def exit; end

  def display
   return  "Hi #{@user_record['name']} your total score is #{user_record['score']}"
  end
end

