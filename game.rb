require './players'
require './questions'

class Game
  
  def start
    # Create player 1
    p1 = Players.new("Player 1")
    # Create player 2
    p2 = Players.new("Player 2")
    
    current_player = rand(1..2)

    puts "--- Game Start ---"
    puts "--- Choosing Player ---"
    puts "--- PLAYER #{current_player} Selected"

     ##----------- state of while loop ----------------
    while (p1.lives && p2.lives) > 0 do
      @question = Questions.new

      puts "Player #{current_player}: #{@question.create_question}"
      answer = gets.chomp

    end
  
    ##----------- end of while loop ----------------
    
    puts "--- GAME OVER ---"
  end
  
end