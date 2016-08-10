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




# Tests
game = NumberGuessingGame.new
p game.guess(5) == "Too low"
p game.guess(8) == "Too high"
p game.guess(7) == "Too high"
p game.guess(6) == "You got it!"