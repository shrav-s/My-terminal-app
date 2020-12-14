class Wordclues
  
    
    def initialize ()
        @words = {"w1"=> "apple", "w2"=> "sky", "w3"=> "bat", "w4"=> "initiate", "w5"=> "rapid", "w6"=> "reflect"}
        @clues ={ 
                    "c1"=> "This is a fruit",
                    "c2"=> "It is red in colour",
                    "c3"=> "it is round in shape",
                    "c4"=> "It is vast",
                    "c5"=> "It is blue in colour",
                    "c6"=> "It is above everyones head",
                    "c7"=> "An accessory in a game",
                    "c8"=> "It is long and made of wood",
                    "c9"=> "Face the bowler",
                    "c10"=> "To introduce",
                    "c11"=> "Give a start",
                    "c12"=> "To lauch or trigger",
                    "c13"=> "Move quickly",
                    "c14"=> "Brisk of swift",
                    "c15"=> "fast like some transit", 
                    "c16"=> "Think carefully",
                    "c17"=> "Ponder or mediate on",
                    "c18"=> "Mirror back"
        }

       @wordsandclues ={"w1"=> ["c1","c2","c3"],"w2"=> ["c4", "c5", "c6"], "w3"=> ["c7","c8","c9"], "w4"=> ["c10", "c11", "c12"], "w5"=> ["c13", "c14", "c15"], "w6"=> ["c16", "c17", "c18"]}
       @attemptscore = [100,50,20]
      
    end
# method to return keys of all words
    def get_word_keys
        return @words.keys        
    end
# method to return clues of all words
    def get_clue_keys
        return @clues.keys
    end
# method to get word when key is passed
    def get_word(word_key)
        return @words[word_key]
    end
# method to get clues when key is passed
    def get_clue(clue_key)
        return @clues[clue_key]
    end
# method to return clue_keys when word_key is passed
    def get_clue_for_word(word_key)
        return @wordsandclues[word_key]
    end
    def get_attempt_score(attempt_count)
        return @attemptscore[attempt_count]
    end
end

# xyz=Wordclues.new
# puts xyz.get_word_keys
# puts xyz.get_clue_keys
# puts xyz.get_word("w2")
# puts xyz.get_clue("c3")
# puts xyz.get_clue_for_word("w1")
# puts xyz
