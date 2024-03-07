#generate numbers for the questions

#checks to see if player is correct


class Question
  attr_reader :question, :answer
  OPERATORS = ['+', '-', '*', '/'].freeze

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @operator = OPERATORS.sample
    @question = "What does #{@num1} #{@operator} #{@num2} equal?"
    @answer = calculate_answer
  end

  def to_s
    @question
  end

  private
  def calculate_answer
    case @operator
    when '+'
      @num1 + @num2
    when '-'
      @num1 - @num2
    when '*'
      @num1 * @num2
    when '/'
      @num1 / @num2
    end
  end
end