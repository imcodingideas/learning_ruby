require 'colorize'

class View

  def index(list)
    puts '*' * 70
    puts 'The items on your list are: '

    (0..list.count-1).each { |index_list| puts "#{index_list+1}. #{list[index_list].task}" }
    puts '*' * 70
  end

  def add(new_task, list)
    puts '*' * 70
    puts "Added the task: " + "\"#{new_task}\"".red + " to your list"
    puts
    puts 'The items in your list are: '
    puts

    (0..list.count-1).each { |index_list| puts "#{index_list+1}.  #{list[index_list].task}" }
    puts '*' * 70
  end

  def delete(delete_num, list, delete_value)

    puts '*' * 70
    puts "Deleted the task " + "\"#{delete_value}\"".red + " from your list."
    puts
    puts 'The items on your list are: '
    puts

    (0..list.count-1).each { |index_list| puts "#{index_list+1}.  #{list[index_list].task}" }
    puts "*" * 70
  end

  def complete(completed_array, list, completed_value)

    puts '*' * 70
    puts "You completed the task: " + "\"#{completed_value}\" ".red + " on your list."
    puts
    puts 'The items in your list are: '
    puts

    (0..list.count-1).each { |index_list| puts "#{index_list+1}. #{[completed_array[index_list]]} #{list[index_list].task}" }

    puts '*' * 70

  end

  def error
    system 'clear'
    puts 'The option you chose is not valid'
    sleep(2)
    system 'clear'
  end

end