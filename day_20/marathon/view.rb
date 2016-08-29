class View

  def index
    puts "Welcome to Marathon. We'll give you a question and you must guess the correct answer."
    puts 'Ready? Start the game!'
    3.times do
      sleep(1)
      print '*'
    end
  end

  def show_question(object)
    puts 'Question:'
    puts object
  end

  def get_answer
    puts 'Tried:'
    user_answer = gets.chomp
    user_answer
  end

  def check_answer(string)
    puts string
  end

end