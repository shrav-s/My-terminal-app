

require_relative('wordsclues_class')
require_relative('user_class')

class Game
  @user_object
  @current_word
  @current_word_clues
  @current_clue
  @user_guess_word
  @current_attempt_count
  @current_word_score
  def initialize
    @word_clue_object = Wordclues.new
    # @attempt = attempt
    # @words = words
    # @clues = clues

    # @current_attempt
    # @game_total_score
    # @current_word_clues
  end

  def start_game(user)
    @user_object = user
    secret_word = ''
    game_score = 0
    question_count = 0
    clue_count = 0

    @word_clue_object.get_word_keys.each do |wkey| # this will return all word keys
      question_count += 1

      clue_count = 0
      @current_word = @word_clue_object.get_word(wkey) # this will return actual word for a word key
      @current_word_clues = @word_clue_object.get_clue_for_word(wkey) # this will return all clue keys for a given word key
      @current_word.chars.each  do |_char|
        secret_word << ' _ '
      end
      @current_attempt_count = 0
      puts "Question: #{question_count}"
      @current_word_clues.each do |ckey|
        clue_count += 1
        @current_clue = @word_clue_object.get_clue(ckey)
        puts "Question: #{question_count} Clue: #{clue_count}"
        puts @current_clue
        puts secret_word.to_s
        puts 'please enter your answer....'
        @current_attempt_count += 1
        @current_word_score = @word_clue_object.get_attempt_score(@current_attempt_count - 1)
        user.user_record['score'] =
          user.user_record['score'] + @current_word_score.to_i

        @user_guess_word = gets.chomp.downcase
        if @user_guess_word == @current_word
          game_score += @current_word_score
          system 'clear'
          puts "That is a corrcet answer!!  You scored #{@current_word_score} points.  Your total game score is #{game_score}"
          puts 'Here is your next question...' if question_count < @word_clue_object.get_word_keys.length
          secret_word = ''

          break
        elsif @current_attempt_count == @current_word_clues.length
          puts ' sorry.. that was a wrong answer !!'
          puts " You've ran out of your chances. The correct answer was - #{@current_word}"
          secret_word = ''
        end
      end
    end
    if question_count == @word_clue_object.get_word_keys.length
      puts 'Congratulations!! You have completed this game'
      puts " Your game score is #{game_score} and total score is #{user.user_record['score']}"
    end
  end

  # def display_clue()
  #     clue = @word_clue_object.get_clue_for_word("w1")[0]

  #     return @word_clue_object.get_clue(clue)
  # end
  # def input
  #     user_answer = gets.chomp.downcase
  #     if user_answer != @word_clue_object.get_word("w1")
  #         clue = @word_clue_object.get_clue_for_word("w1")[1]

  #     else

  #     end
  # end

  # def attempt_Count
  # end
end

# user_object = User.new("AVinash", 0)
#  xyz =Game.new
#  # # # puts xyz.display_clue
# xyz.start_game(user_object)
