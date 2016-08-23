# - Create Players class

# class Player
#   attr_reader :name, :gameover
#   attr_accessor :section
#
#   def initialize(name, gameover)
#     @name = name
#     @gameover = gameover
#   end
def start_board_over
@board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
@player_one = []
@player_two = []
@player_one_win = FALSE
@player_two_win = FALSE
@answer = 0
@gameover = FALSE
end


def action
  move_p1
  move_p2
  action
end

def pick(name, player)
  print "#{name}, you have "
  print player.to_i
  puts "Pick a number, 1-9"
  @answer = gets.chomp
end

def move_p1
  name = "first player"
  pick(name, @player_one)
  if @board.include?(@answer)
    @player_one.push(@answer)
    @board.delete(@answer)
  else
    puts "Action not available, please try again!"
    move_p1
  end
end
if @gameover == true
  puts "Game Completed! Player 1(X), what have you?"
  print "choose (#), or (n)ext game>"
  choice = gets.chomp
  if choice.upcase == "N" then
    go
  end
  move(choice.to_i)
else
  puts "Player 1(X), what have you?"
    print "choose (#)> "
    choice = gets.chomp.to_i
    move(choice)
end



def move_p2
  name = "second player"
  pick(name, @player_two)
  if @board.include?(@answer)
  @player_two.push(@answer)
  @board.delete(@answer)
else
  puts "Action not available, please try again!"
  move_p2
  end
end
if @gameover == true
    puts "Game Completed! Player 2(O), what have you?"
    print "choose (#), or (n)ext game> "
    choice = gets.chomp
    if choice.upcase == "N" then
      go
    end
    move(choice.to_i)
  else
    puts "Player 2(O), what have you?"
    print "choose (#)> "
    choice = gets.chomp.to_i
    move(choice)
end

def player1(a, b, c)
  if @player_one.include?(a) && @player_one.include?(b) && @player_one.include?(c)
    @player_one_win = true
    @gameover = true
  end
end

action



#
#   def movement(grid, character, spot)
#     if spot == '1'
#       puts "You chose cell 1"
#       grid.grid['1'] = character
#     end
#     if spot == '2'
#       puts "You chose cell 2"
#       grid.grid['2'] = character
#     end
#     if spot == '3'
#       puts "You chose cell 3"
#       grid.grid['3'] = character
#     end
#     if spot == '4'
#       puts "You chose cell 4"
#       grid.grid['4'] = character
#     end
#     if spot == '5'
#       puts "You chose cell 5"
#       grid.grid['5'] = character
#     end
#     if spot == '6'
#       puts "You chose cell 6"
#       grid.grid['6'] = character
#     end
#     if spot == '7'
#       puts "You chose cell 7"
#       grid.grid['7'] = character
#     end
#     if spot == '8'
#       puts "You chose cell 8"
#       grid.grid['8'] = character
#     end
#     if spot == '9'
#       puts "You chose cell 9"
#       grid.grid['9'] = character
#     end
#
#   end
#
#
# # end
#
#
#
#
#
#
# class Grid
#   attr_accessor :grid
#   def initialize
#     @symbols = []
#     @grid = {
#        '1' => '1',
#        '2' => '2',
#        '3' => '3',
#        '4' => '4',
#        '5' => '5',
#        '6' => '6',
#        '7' => '7',
#       '8' => '8',
#       '9' => '9',
#     }
#   end
#
#
#
#   def print_grid
#     puts """
#     #{@grid['1']} | #{@grid['2']} | #{@grid['3']}
#     ------------
#     #{@grid['4']}| #{@grid['5']}  | #{@grid['6']}
#     ------------
#     #{@grid ['7']}| #{@grid['8']}  | #{@grid ['9']}
#     """
#   end
# end
#
#
# #methods
# def choice
#   movement.each do |character, spot|
#     if spot != @grid
#       not_@grid.push(character)
#     end
#   end
# end
#
# def record
#   if player_section.movement == """ #{@grid ['1']} && #{@grid ['2']} && #{@grid ['3']}"""
#     puts "You win!"
#   else
#     puts "Better luck next time."
#   end
#   if player_section.movement == """ #{@grid ['1']} && #{@grid ['5']} && #{@grid ['9']}"""
#     puts "You win!"
#   else
#     puts "Better luck next time."
#   end
#   if player_section.movement == """ #{@grid ['1']} && #{@grid ['4']} && #{@grid ['7']}"""
#     puts "You win!"
#   else
#     puts "Better luck next time."
#   end
#   if player_section.movement == """ #{@grid ['4']} && #{@grid ['5']} && #{@grid ['6']}"""
#     puts "You win!"
#   else
#     puts "Better luck next time."
#   end
#   if player_section.movement ==""" #{@grid ['7']} && #{@grid ['8']} && #{@grid ['9']}"""
#     puts "You win!"
#   else
#     puts "Better luck next time."
#   end
#   if player_section.movement == """ #{@grid ['7']} && #{@grid ['5']} && #{@grid ['3']}"""
#     puts "You win!"
#   else
#     puts "Better luck next time."
#   end
#   if player_section.movement == """ #{@grid ['3']} && #{@grid['6']} && #{@grid['9']}"""
#     puts "You win!"
#   else
#     puts "Better luck next time."
#   end
# end
#
# #methods
#
#
# puts "Welcome to Tic-Tac-Toe, play for complete domination!"
#
# grid = Grid.new
#
# print "<Player one type your name here:>"
# name = gets.chomp
#
# player_one = Player.new(name)
# computer_ai = Player.new("Computer")
#
# loop do
#   #Start of the turn
#   print "To play you have to choose through sections 1-9,"
#
#   spot = gets.chomp
#
#   grid.print_grid
#
#   player_section   = "X"
#   computer_section = "O"
#
#   player_one.movement(grid, player_section, spot)
#   computer_ai.movement(grid, computer_section, rand(1..9).to_s)
#   # Computer choice cannot stay random forever, will need to pick from available moes
#
#
#   grid.print_grid
#   #End of the turn
#end
