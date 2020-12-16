require_relative('wordsclues_class')
require_relative('user_class')
require('colorize')

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
#start game method
  def start_game(user)
      @user_object = user
      secret_word = ''
      game_score = 0
      question_count = 0
      clue_count = 0
# this will return all word keys
#start of words loop
    @word_clue_object.get_word_keys.each do |wkey| 
      question_count += 1

      clue_count = 0
      @current_word = @word_clue_object.get_word(wkey) # this will return actual word for a word key
      @current_word_clues = @word_clue_object.get_clue_for_word(wkey) # this will return all clue keys for a given word key
     #start of secret word loop
      @current_word.chars.each  do |_char|
        secret_word << ' _ '
      end
      #end of secret word loop
      @current_attempt_count = 0
      # puts "Question: #{question_count}".yellow.on_black
     #start of clues loop
      @current_word_clues.each do |ckey|
        clue_count += 1
        @current_clue = @word_clue_object.get_clue(ckey)
        puts "Question: #{question_count} Clue: #{clue_count}".cyan.on_black
        puts @current_clue.yellow.on_black
        puts secret_word.to_s
        puts 'please enter your answer....'.blue.on_black
        @current_attempt_count += 1
        @current_word_score = @word_clue_object.get_attempt_score(@current_attempt_count - 1)
        user.user_record['score'] =
          user.user_record['score'] + @current_word_score.to_i

        @user_guess_word = gets.chomp.downcase
        #start of validating user answer
        if @user_guess_word == @current_word
          game_score += @current_word_score
          system 'clear'
          puts "That is a corrcet answer!!  You scored #{@current_word_score} points.  Your total game score is #{game_score}".green.on_black
          
        #start of check if there are more questions
          if question_count < @word_clue_object.get_word_keys.length
            puts 'Here is your next question...'.yellow.on_black
            secret_word = ''
          end
      
          break
          
        #end of check if there are more questions
          else
            puts ' sorry.. that was a wrong answer !!'.colorize(:color => :white, :background => :red)
              if(@current_attempt_count == @current_word_clues.length)          
                puts " You've ran out of your chances. The correct answer was - #{@current_word}".red.on_black
                secret_word = ''
              end
        end
    end
     if question_count == @word_clue_object.get_word_keys.length
      puts 'Congratulations!! You have completed this game'.green.on_black
      puts " Your game score is #{game_score} and total score is #{user.user_record['score']}".cyan.on_black
    end
    end
   
  end  
  
end

