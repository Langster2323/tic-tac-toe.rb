# - Create Players class

class Player
  attr_reader :name
  attr_accessor :section

  def initialize(name)
    @name = name
  end
  def player_movement(grid)
    if player_one.input == '1'
      puts "You chose cell 1"
      grid.grid['1'] = "x"
    end
    if player_one.input == '2'
      puts "You chose cell 2"
      grid.grid['2'] = "x"
    end
    if player_one.input == '3'
      puts "You chose cell 3"
    end
    if player_one.input == '4'
      puts "You chose cell 4"
    end
    if player_one.input == '5'
      puts "You chose cell 5"
    end

  end

  def computer_move
  end

  def input
    choices = ["X", "O"]
    print "Choose a section. "
    choices.each do |choice|
      print "#{choice} "
    end
    @section = gets.chomp
  end


end






class Grid
  attr_accessor :grid
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
  def player_choice
  end
end
puts "Welcome to Tic-Tac-Toe, play for complete domination!"


print "<Player one type your name here:>"

name = gets.chomp
print "To play you have to choose through sections 1-9,"

grid = Grid.new
grid.make_grid
grid.print_grid

player_one = Player.new(name)
player_one.input

player_one.player_movement(grid)
