class Symbols
  attr_reader :😎, :🤓

  def initialize(😎, 🤓)
    @😎 = 😎
    @🤓 = 🤓
  end

  class Player
  end

  class Board
  end

  class Game
  end
end

puts "Welcome to Tic-Tac-Toe, play for complete domination!"

print "<Player one type your name here: #{$name}, okay thanks!>"

$name = gets.chomp
