=begin
Create the class NumberGuessingGame. By creating an instance of the class ( NumberGuessingGame.new) the program assigns a
random number between 0 and 9, which we guess after the method guess.

The method NumberGuessingGame#guessreceives an integer and returns:

- "Too low" if the number is smaller than the random number assigned by the program.
- "You got it!", If the number is the same as random number.
- "Too high" if the number is larger than the random number assigned by the program.

*Extra*
Make your program is interactive. The user should be able to enter the numbers received by the method guess.
You can also start a new game or quit.
Source: http://ruby.about.com/od/beginningruby/ss/Worked-Example-Number-Guessing-Game.htm
=end

class NumberGuessingGame
  def initialize
    @number = rand(0..9).to_s
  end

  def guess
    puts "I'm thinking of a random number from 0 to 9"
    puts "Can you guess it?"

    input = gets.chomp

    if input == @number
      puts 'You got.'
    elsif input > @number
      puts 'Too high'
      guess
    elsif input < @number
      puts 'Too Low'
      guess
    end

  end
end

# Tests
game = NumberGuessingGame.new
game.guess