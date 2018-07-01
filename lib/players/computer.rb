module Players
    class Computer < Player
        def move(board)
            # move = rand(1..9).to_s
            WIN_COMBINATIONS = [
                [0, 1, 2], [3, 4, 5], [6, 7, 8],
                [0, 3, 6], [1, 4, 7], [2, 5, 8],
                [0, 4, 8], [2, 4, 6]
              ]

           # make winning move
           WINNING_MOVE = nil
           BLOCKING_MOVE = nil

           WIN_COMBINATIONS.each do |c|
               winning_move = nil 
               if board.cells[c[0]] == @token && board.cells[c[1]] == @token && board.cells[c[2]] == " "
                   winning_move = c[2]
               elsif board.cells[c[0]] == @token && board.cells[c[1]] == " " && board.cells[c[2]] == @token
                   winning_move = c[1]
               elsif board.cells[c[0]] == " " && board.cells[c[1]] == @token && board.cells[c[2]] == @token
                   winning_move = c[0]
               end



        end
    end
end
