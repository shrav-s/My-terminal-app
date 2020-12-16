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




  def check_user_exist(username)
    if
      File.file?("user_database.txt")
    else
      File.open("user_database.txt")

    return "true or flase"
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




