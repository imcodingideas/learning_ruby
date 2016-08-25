require_relative 'Model'
require_relative 'View'

class Controller

  def initialize(action, value)
    @action = action
    @value = value
    @list = List.new
    @view = View.new
  end

  def index
    @view.index(@list.list)
  end

  def add
    @list.add(@value)
    @view.add(@value, @list.list)
  end

  def delete
    @list.delete(@value.to_i)
    @view.delete(@value, @list.list, @list.delete_value)
  end

  def complete
    @list.complete(@value.to_i)
    @view.complete(@list.completed_arrangement, @list.list, @list.completed_value)
  end

  def error
    @view.error
  end

end

action_value = ARGV
action = action_value[0]
value  = action_value[1]

todo = Controller.new(action, value)

if action == 'index'
  todo.index
elsif action == 'add'
  todo.add
elsif action == 'delete'
  todo.delete
elsif action == 'complete'
  todo.complete
else
  todo.error
end