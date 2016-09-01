class TasksView
	# Remember that the only responsibility is to deploy data view to the user

	def index(tasks)
    puts 'Todo List'
    tasks.each do |task|
      puts "| #{task.id} | #{task.status} | #{task.text} |"
    end
	end

  def create
    puts 'Task has been added'
  end

  def delete
    puts 'Task has been deleted'
  end

  def update
    puts 'Task has been updated'
  end

	def error
    puts 'There has been an error'
	end
end
