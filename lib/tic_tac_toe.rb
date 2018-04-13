
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def won?(board)
  winner = false
  who_won = nil
  WIN_COMBINATIONS.each do |current_combination|
    if board[current_combination[0]] == "X" && board[current_combination[1]] == "X" && board[current_combination[2]] == "X"
      winner = current_combination
      who_won = "X"
    elsif board[current_combination[0]] == "O" && board[current_combination[1]] == "O" && board[current_combination[2]] == "O"
      winner = current_combination
      who_won = "O"
    end
  end
  return winner
end
    
def full?(board)
 board.none?{|blank_space| blank_space == " "} 
end

def draw?(board)
  if full?(board) == true && won?(board) == false
  return true
  else 
    return false
  end
end  
  
def over?(board)
  if full?(board) == true || won?(board) != false
    return true
<<<<<<< HEAD
   else return false
=======
  else return false
>>>>>>> f506d42c9856a2ba7c586bd4b8eefc8f76a9b539
end
end

def input_to_index(user_input)
<<<<<<< HEAD
  index = user_input.to_i - 1
end

def move(board, index, current_player)
  board[index] = current_player
 end
=======
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end
>>>>>>> f506d42c9856a2ba7c586bd4b8eefc8f76a9b539

def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
<<<<<<< HEAD
    current_player = current_player(board)
    move(board, index, current_player)
    display_board(board)
  else turn(board)
=======
    move(board, index)
    display_board(board)
  else
    turn(board)
>>>>>>> f506d42c9856a2ba7c586bd4b8eefc8f76a9b539
  end
end

def turn_count(board)
  turn = 0
  board.each do |position|
    if position == "X" || position == "O"
      turn += 1
    end
  end
  return turn
end

def current_player(board)
  turn = turn_count(board)
  if turn % 2 == 0 
    return "X"
  else
    return "O"
  end
end

def won?(board)
  winner = false
  who_won = nil
  WIN_COMBINATIONS.each do |current_combination|
    if board[current_combination[0]] == "X" && board[current_combination[1]] == "X" && board[current_combination[2]] == "X"
      winner = current_combination
      who_won = "X"
    elsif board[current_combination[0]] == "O" && board[current_combination[1]] == "O" && board[current_combination[2]] == "O"
      winner = current_combination
      who_won = "O"
    end
  end
  return winner
end
    
def full?(board)
 board.none?{|blank_space| blank_space == " "} 
end

def draw?(board)
  if full?(board) == true && won?(board) == false
  return true
  else 
    return false
  end
end  
  
def over?(board)
<<<<<<< HEAD
  if full?(board) == true || won?(board) != false || draw?(board) == true
=======
  if full?(board) == true || won?(board) != false
>>>>>>> f506d42c9856a2ba7c586bd4b8eefc8f76a9b539
    return true
  else return false
end
end

def winner(board)
winner = false
  who_won = nil
  WIN_COMBINATIONS.each do |current_combination|
    if board[current_combination[0]] == "X" && board[current_combination[1]] == "X" && board[current_combination[2]] == "X"
      winner = current_combination
      who_won = "X"
    elsif board[current_combination[0]] == "O" && board[current_combination[1]] == "O" && board[current_combination[2]] == "O"
      winner = current_combination
      who_won = "O"
    end
  end
  return who_won
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def play(board)
<<<<<<< HEAD
   while over?(board) != true
   turn(board)
=======
 while over?(board) != true
   if draw?(board) != true
  turn(board)
   elsif draw?(board) == true
     puts "Cat's Game!"
  end
>>>>>>> f506d42c9856a2ba7c586bd4b8eefc8f76a9b539
  end
  if over?(board) == true
    if winner(board) == "O"
    puts "Congratulations O!"
    elsif winner(board) == "X"
    puts "Congratulations X!"
<<<<<<< HEAD
    elsif draw?(board) == true
      puts "Cat's Game!"
=======
  
>>>>>>> f506d42c9856a2ba7c586bd4b8eefc8f76a9b539
end 
end
end