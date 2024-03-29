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
    puts "--- Choosing Player To Answer ---"
    puts "--- PLAYER #{current_player} Selected"

     ##----------- start of while loop ----------------
    while (p1.lives && p2.lives) > 0 do
      @question = Questions.new
      if(current_player === 1)
        puts "Player 2: #{@question.create_question}"
      else
        puts "Player 1: #{@question.create_question}"
      end
      answer = gets.chomp

      if @question.check_answer(answer) == false
        if(current_player === 1)
          p1.deduct_life
          puts "Wrong answer Player 1!"
        else
          p2.deduct_life
          puts "Wrong answer Player 2!"
        end
      end

      puts "P1: #{p1.lives} / 3 vs P2: #{p2.lives} / 3"

      current_player = current_player === 1 ? 2 : 1
    end
  
    ##----------- end of while loop ----------------
    
    puts "--- GAME OVER ---"
    puts "--- Good bye! ---"
  end
  
end