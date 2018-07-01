module Players
    class Computer < Player
        def move(board)
            # move = rand(1..9).to_s
            WIN_COMBINATIONS = [
                [0, 1, 2], [3, 4, 5], [6, 7, 8],
                [0, 3, 6], [1, 4, 7], [2, 5, 8],
                [0, 4, 8], [2, 4, 6]
              ]


           WINNING_MOVE = nil
           BLOCKING_MOVE = nil
           OPPONENT = "O"

           if @token == "O"
               OPPONENT = "X"
           end
           # check for winning moves
           WIN_COMBINATIONS.each do |c|
               if board.cells[c[0]] == @token && board.cells[c[1]] == @token && board.cells[c[2]] == " "
                   WINNING_MOVE = c[2]
               elsif board.cells[c[0]] == @token && board.cells[c[1]] == " " && board.cells[c[2]] == @token
                   WINNING_MOVE = c[1]
               elsif board.cells[c[0]] == " " && board.cells[c[1]] == @token && board.cells[c[2]] == @token
                   WINNING_MOVE = c[0]
               end
           end


           WIN_COMBINATIONS.each do 







        end
    end
end
