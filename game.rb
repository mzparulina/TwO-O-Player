require './players'
require './questions'

class Game
  
  def start
    # Create player 1
    p1 = Player.new("Player 1")
    # Create player 2
    p2 = Player.new("Player 2")
    
    current_player = rand(1,2)

    puts "--- Game Start ---"
    puts "--- Choosing Player ---"
    puts "--- player #{@current_player} selected"

     ##----------- state of while loop ----------------
    while (p1.lives && p2.lives) > 0 do
      @question = Questions.new

      if current_player % 2 == 0
        puts "Player 2: #{@question.create_question}"
      else
        puts "Player 1: #{@question.create_question}"
      end
      answer = gets.chomp

    end
  
    ##----------- end of while loop ----------------
    
    puts "--- GAME OVER ---"
  end
  
end