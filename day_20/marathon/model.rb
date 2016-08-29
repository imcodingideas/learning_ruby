require 'csv'

class Letter
  attr_accessor :question, :responce

  def initialize(question, responce)
    @question = question
    @responce = responce
  end

end

class List

  def initialize
    @list = []
    index
    @i = -1
  end

  def index
    CSV.foreach('list_questions.csv') do |question|
      @list << Letter.new(question[0], question[1])
    end
    @list
  end

  def show_question(num)
    @i += 1
    new_question = @list[num].question
    new_question
  end

  def compare_response(num, answer)
    (answer == @list[num].answer) ? 'Correct!' : 'Incorrect!'
  end

end