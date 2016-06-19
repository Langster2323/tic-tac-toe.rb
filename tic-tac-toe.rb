# - Create Players class

class Player
  attr_reader :name
  attr_accessor :section, :cells

  def initialize(name)
    @name = name
    @cells = cells
  end

  def movement(grid, character, spot)
    if spot == '1'
      puts "You chose cell 1"
      grid.grid['1'] = character
    else
      puts "Invalid Input"
    end
    if spot == '2'
      puts "You chose cell 2"
      grid.grid['2'] = character
    else
      puts "Invalid Input"
    end
    if spot == '3'
      puts "You chose cell 3"
      grid.grid['3'] = character
    else
      puts "Invalid Input"
    end
    if spot == '4'
      puts "You chose cell 4"
      grid.grid['4'] = character
    else
      puts "Invalid Input"
    end
    if spot == '5'
      puts "You chose cell 5"
      grid.grid['5'] = character
    else
      puts "Invalid Input"
    end
    if spot == '6'
      puts "You chose cell 6"
      grid.grid['6'] = character
    else
      puts "Invalid Input"
    end
    if spot == '7'
      puts "You chose cell 7"
      grid.grid['7'] = character
    else
      puts "Invalid Input"
    end
    if spot == '8'
      puts "You chose cell 8"
      grid.grid['8'] = character
    else
      puts "Invalid Input"
    end
    if spot == '9'
      puts "You chose cell 9"
      grid.grid['9'] = character
    else
      puts "Invalid Input"
    end

  end

  def invalid_input
    if player_one == ""
      puts "Invalid Input"
    end
  end
end






class Grid
  attr_accessor :grid
  def initialize
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


#methods
def choice
  movement.each do |character, spot|
    if spot != @grid
      not_@grid.push(character)
    end
  end
end

def player_win_conditions(movement)
  if player_section.movement == ['1'] && ['2'] && ['3']
    puts "You win!"
  end
  if player_section.movement == ['1'] && ['5'] && ['9']
    puts "You win!"
  end
  if player_section.movement == ['1'] && ['4'] && ['7']
    puts "You win!"

  end
  if player_section.movement == ['4'] && ['5'] && ['6']
    puts "You win!"
  end
  if player_section.movement == ['7'] && ['8'] && ['9']
    puts "You win!"
  end
  if player_section.movement == ['7'] && ['5'] && ['3']
    puts "You win!"
  end
  if player_section.movement == ['3'] && ['6'] && ['9']
    puts "You win!"
  end
end

def computer_win_conditions(movement)
  if computer_section.movement == ['1'] && ['2'] && ['3']
    puts "Computer wins... play again?!"
  end
  if computer_section.movement == ['1'] && ['5'] && ['9']
    puts "Computer wins... play again?!"
  end
  if computer_section.movement == ['1'] && ['4'] && ['7']
    puts "Computer wins... play again?!!"
  end
  if computer_section.movement == ['4'] && ['5'] && ['6']
    puts "Computer wins!... play again?!"
  end
  if computer_section.movement == ['7'] && ['8'] && ['9']
    puts "Computer wins!... play again?!"
  end
  if computer_section.movement == ['7'] && ['5'] && ['3']
    puts "Computer wins!... play again?!"
  end
  if computer_section.movement == ['3'] && ['6'] && ['9']
    puts "Computer wins!... play again?!"
  end
end

class Game
  def tie_conditions
    if computer_win_conditions != computer_win_conditions
      puts "tough break"
    end
    if player_win_conditions != player_win_conditions
      puts "tought break"
    end
  end
end
#methods


puts "Welcome to Tic-Tac-Toe, play for complete domination!"

grid = Grid.new


print "<Player one type your name here:>"
name = gets.chomp

player_one = Player.new(name)
computer_ai = Player.new("Computer")


# This is hash I tried to employ
#@cells = @grid.cells
#@cells[rand(cells.size)]


loop do
  #Start of the turn
  print "To play you have to choose through sections 1-9,"

  spot = gets.chomp

  grid.print_grid

  player_section   = "X"
  computer_section = "O"


  player_one.movement(grid, player_section, spot)
  computer_ai.movement(grid, computer_section, rand(1..9))


  # Computer choice cannot stay random forever, will need to pick from available moes

  grid.print_grid
  #End of the turn

end
