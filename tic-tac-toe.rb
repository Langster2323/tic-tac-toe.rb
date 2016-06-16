class Symbols
  attr_reader :😎, :🤓

  def initialize(😎, 🤓)
    @😎 = 😎
    @🤓 = 🤓
  end
end

puts "Welcome to Tic-Tac-Toe"

print "<Print your name here: #{$name}>"

$name = gets.chomp
