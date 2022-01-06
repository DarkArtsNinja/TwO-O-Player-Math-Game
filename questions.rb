

class Questions

  attr_accessor :question, :value1, :value2, :answer

  def initialize
    @value1 = rand(1..20)
    @value2 = rand(1..20)
    @question = nil
    @answer = @value1 + @value2
  end
  
  def new_question
    @value1 = rand(1..20)
    @value2 = rand(1..20)
    @answer = value1 + value2
    @question = "What does #{value1} and #{value2} equal to?"
  end

end

