require_relative 'Model'
require_relative 'View'

class Controller

  def initialize()
    @list = List.new
    @view = View.new
    index
    @list.index.each_with_index do |item, index|
      show_question(index)
      check_answer(index)
    end
  end

  def index
    @view.index
  end

  def show_question(num)
    @view.show_question(@list.show_question(num))
  end

  def check_answer(index)
    @view.check_answer(@list.compare_response(index, @view.get_answer))
  end
end

cont = Controller.new
cont.index
cont.show_question(1)
cont.check_answer(1)