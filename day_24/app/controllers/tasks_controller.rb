class TasksController
  def initialize(args)
    @view = TasksView.new
  end

  def index
    tasks = Task.all
    @view.index(tasks)
  end

  def add
    Task.create(text: text, status: false)
    @view.create
  end

  def delete
    Task.delete(id)
    @view.delete
  end

  def complete
    a = Task.find(id)
    a.status = true
    @view.update
  end
end
