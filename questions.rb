class Questions
  
  def initialize()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def create_question
    return "What does #{@num1} plus #{@num2} equal?"
  end

  def check_answer(answer)
    if @answer == answer.to_i ## convert the answer to string
      return true
    else
      return false
    end
  end
end