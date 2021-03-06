board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def valid_move?(board, index)
  if index < 0
    return false
  elsif index > 8
    return false
  elsif board[index] != " "
    return false
  else
    return true
  end
end

def move(board, input_to_index, char="X")
  board[input_to_index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input) == false
    turn(board)
  else
    move(board, input)
    display_board(board)
  end
end
