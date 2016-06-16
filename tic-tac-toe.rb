# - Create Players class

class Players
  attr_reader :name
  attr_accessor :x, :o

  def initialize(name, x, o)
    @name = name
    @x = x
    @o = x
  end

  def input(x, o)
    puts ""
  end
  def player_one
  end
end






class Grid
  def make_grid
    @symbols = []
    @grid = {
       '1' => '1',
       '2' => '2',
       '3' => '3',
       '4' => '4',
       '5' => '5',
       '6' => '6',
       '7' => '7',
      '8' => '8',
      '9' => '9',
    }
  end

  def print_grid
    puts """
    #{@grid['1']} | #{@grid['2']} | #{@grid['3']}
    ------------
    #{@grid['4']}| #{@grid['5']}  | #{@grid['6']}
    ------------
    #{@grid ['7']}| #{@grid['8']}  | #{@grid ['9']}
    """
  end
end



class Game
end
puts "Welcome to Tic-Tac-Toe, play for complete domination!"


print "<Player one type your name here: #{@name}, okay thanks!>"

@name = gets.chomp
print "To play you have to choose through sections 1-9,"

@grid = Grid.new
@grid.make_grid
@grid.print_grid

player_one = Player.new
player_one.input
