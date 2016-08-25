require 'csv'

class List
  attr_accessor :list, :delete_value, :completed_arrangement, :completed_value

  def initialize
    @file_name = 'todo_list.csv'
    @list = Array.new
    read_csv
  end

  def read_csv
    CSV.foreach(@file_name) do |row|
      @list <<  Task.new(row[0], to_b(row[1]))
    end
  end

  def to_b(string)
    string == 'true' ? true : false
  end

  def add(input)
    File.open(@file_name, 'a+') do |new_line|
      new_line.write("\n" +input + "," + false.to_s)
    end
    @list << Task.new(input)
  end

  def delete(input)
    @delete_value = @list[input-1].task
    @list.delete_at(input-1)
    write
  end

  def write
    CSV.open(@file_name, 'wb') do |csv|
      @list.each { |i| csv << [i.task, i.complete]}
    end
  end

  def complete(num_complete)
    @completed_value = @list[num_complete-1].task
    @list[num_complete-1].complete = true
    write
    @completed_arrangement = Array.new(@list.count, ' ')

    (0..@list.count-1).each { |val_x| @completed_arrangement[val_x] = 'X' if @list[val_x].complete == true }
  end

end


class Task
  attr_accessor :task, :complete

  def initialize(task, complete = false)
    @task = task
    @complete = complete
  end

end

List.new