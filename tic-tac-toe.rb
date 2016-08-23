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
@player_one_score = 0
@player_two_score = 0
@gamenumber = 0
@answer = 0
@gameover = FALSE
@twoplayer = FALSE
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

def c_turn
  def move
    @player_two.push(n)
    @board.delete(n)
  end
  puts "Computer, what have you?"
  3.times do
    sleep 0.5
    print "."
  end
  sleep 1
  choice = @board.sample
  move(choice)
end

def player1(a, b, c)
  if @player_one.include?(a) && @player_one.include?(b) && @player_one.include?(c)
    @player_one_win = true
    @gameover = true
    player_one_seq
  end
end

def player2(a, b, c)
  if @player_two.include?(a) && @player_two.include?(b) && @player_two.include?(c)
    @player_two_win = true
    @gameover = true
    player_two_seq
  end
end

def player_one_win_checker
  unless @player_one_win || @player_two_win
    player1(1,2,3)
    player1(4,5,6)
    player1(7,8,9)
    player1(1,4,7)
    player1(2,5,8)
    player1(3,6,9)
    player1(1,5,9)
    player1(3,5,7)
  end
end

def player_two_win_checker
  unless @player_one_win || @player_two_win
    player2(1,2,3)
    player2(4,5,6)
    player2(7,8,9)
    player2(1,4,7)
    player2(2,5,8)
    player2(3,6,9)
    player2(1,5,9)
    player2(3,5,7)
  end
end

def player_one_seq
  @player_one_score += 1
  3.times do
    @header = "                  "
    board_moves
    sleep 0.5
    @header = "playerone(X) wins!"
    board_moves
    sleep 0.5
  end
end

def player_two_seq
  @player_two_score += 1
  3.times do
    @header = "                 "
    board_moves
    sleep 0.5
    if @twoplayer == true
      @header = "playertwo(O) wins!"
    elsif @twoplayer == false
      @header = "Computer wins!"
    end
    board_moves
    sleep 0.5
  end
end

def play_game
  until @board == nil
    move_p1
    player_one_win_checker
    board_moves
    sleep 0.5

    if @twoplayer == true
      move_p2
    else
      c_turn
    end
    player_two_win_checker
    board_moves
    sleep 0.5
  end
end

def reset_board
  @sq1 = "1"
  @sq2 = "2"
  @sq3 = "3"
  @sq4 = "4"
  @sq5 = "5"
  @sq6 = "6"
  @sq7 = "7"
  @sq8 = "8"
  @sq9 = "9"
  @header = "  BATTLE!  "
  @p1win = FALSE
  @p2win = FALSE
  @gameover = FALSE
  @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  @player1 = []
  @player2 = []
  @gamenumber += 1
  3.times do
    sleep 0.5
    board_moves
    puts "Game ##{@gamenumber} go!"
    sleep 0.5
    board_moves
  end
end

def reset_board
  @grid1 = "1"
  @grid2 = "2"
  @grid3 = "3"
  @grid4 = "4"
  @grid5 = "5"
  @grid6 = "6"
  @grid7 = "7"
  @grid8 = "8"
  @grid9 = "9"
  @header = "  BATTLE!  "
  @player_one_win = FALSE
  @player_two_win = FALSE
  @gameover = FALSE
  @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  @player_one = []
  @player_one = []
  @gamenumber += 1
  3.times do
    sleep 0.5
    board_moves
    puts "Game ##{@gamenumber} go!"
    sleep 0.5
    board_moves
  end
end

def x_marks
  if @player_one.include?(1) then
    @grid1 = "X"
  end
  if @player_one.include?(2) then
    @grid2 = "X"
  end
  if @player_one.include?(3) then
    @grid3 = "X"
  end
  if @player_one.include?(4) then
    @grid4 = "X"
  end
  if @player_one.include?(5) then
    @grid5 = "X"
  end
  if @player_one.include?(6) then
    @grid6 = "X"
  end
  if @player_one.include?(7) then
    @grid7 = "X"
  end
  if @player_one.include?(8) then
    @grid8 = "X"
  end
  if @player_one.include?(9) then
    @grid9 = "X"
  end
end

def o_marks
  if @player_two.include?(1) then
    @grid1 = "O"
  end
  if @player_two.include?(2) then
    @grid2 = "O"
  end
  if @player_two.include?(3) then
    @grid3 = "O"
  end
  if @player_two.include?(4) then
    @grid4 = "O"
  end
  if @player_two.include?(5) then
    @grid5 = "O"
  end
  if @player_two.include?(6) then
    @grid6 = "O"
  end
  if @player_two.include?(7) then
    @grid7 = "O"
  end
  if @player_two.include?(8) then
    @grid8 = "O"
  end
  if @player_two.include?(9) then
    @grid9 = "O"
  end
end

def board_moves
  system("clear")
  x_marks
  o_marks
  puts "    Tic-tac-toe    "
  puts "    #{@header}     "
  puts "╔════════╦════════╗"
  puts "║ X = #{@player_one_score}  ║ O = #{@player_two_score}  ║"
  puts "╚════════╩════════╝"
  puts "   ┍━━━━━━━━━━━┑"
  puts "   ⎟ #{@grid1} ║ #{@grid2} ║ #{@grid3} ⎟"
  puts "   ⎟═══╬═══╬═══⎟"
  puts "   ⎟ #{@grid4} ║ #{@grid5} ║ #{@grid6} ⎟"
  puts "   ⎟═══╬═══╬═══⎟"
  puts "   ⎟ #{@grid7} ║ #{@grid8} ║ #{@grid9} ⎟"
  puts "   ┕━━━━━━━━━━━┙"
end

def boot_game
  def to_start
    puts "Well, shall we do this?"
    print "(y)es or (n)o?> "
    start = gets.chomp
    if start.upcase == "Y"
      puts "LETS GET THIS PARTY STARTED"
      3.times do
        sleep 0.5
        # board_moves
        print "!"
        # board_moves
      end
    elsif start.upcase == "N"
      puts "Right"
      3.times do
        sleep 0.5
        print "."
      end
      print "so"
      sleep 3
      to_start
    else
      puts "YO! try that again!"
      sleep 1
      to_start
    end
  end
end

def to_opponent
    puts "PvP or PvC"
    print "(c)omputer or (p)layer?> "
    opponent = gets.chomp
    if opponent.upcase == "C"
      @twoplayer = FALSE
      puts "ITS COMPUTER!"
      sleep 3
    elsif opponent.upcase == "P"
      @twoplayer = true
      puts "ITS ANOTHER PLAYER!"
      sleep 3
    else
      puts "YO! try that again!"
      sleep 1
      to_opponent
    end
end
  to_start
  to_opponent
  @header = " BATTLE! "


def go
  reset_board
  play_game
end


boot_game
go
action
