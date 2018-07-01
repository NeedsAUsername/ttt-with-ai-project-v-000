module Players
    class Computer < Player
        WIN_COMBINATIONS = [
            [0, 1, 2], [3, 4, 5], [6, 7, 8],
            [0, 3, 6], [1, 4, 7], [2, 5, 8],
            [0, 4, 8], [2, 4, 6]
          ]



        def move(board)
            move = nil
            # move = rand(1..9).to_s
            if self.winning_move?(board)
                move = self.winning_move?(board)
            else move = rand(1..9).to_s
            end
            move
        end

        def opponent
            @token == "X" ? "O" : "X"
        end

        def winning_move?(board)
            winning_move = nil
            WIN_COMBINATIONS.each do |c|
               if board.cells[c[0]] == @token && board.cells[c[1]] == @token && board.cells[c[2]] == " "
                   winning_move = c[2]
               elsif board.cells[c[0]] == @token && board.cells[c[1]] == " " && board.cells[c[2]] == @token
                   winning_move = c[1]
               elsif board.cells[c[0]] == " " && board.cells[c[1]] == @token && board.cells[c[2]] == @token
                   winning_move = c[0]
            end
            winning_move
        end


        # def blocking_move?(board)
        #     blocking_move = nil
        #     WIN_COMBINATIONS.each do |c|
        #         if board.cells[c[0]] == self.opponent && board.cells[c[1]] == self.opponent && board.cells[c[2]] == " "
        #             winning_move = c[2]
        #         elsif board.cells[c[0]] == self.opponent && board.cells[c[1]] == " " && board.cells[c[2]] == self.opponent
        #             winning_move = c[1]
        #         elsif board.cells[c[0]] == " " && board.cells[c[1]] == self.opponent && board.cells[c[2]] == self.opponent
        #             winning_move = c[0]
        #         end
        #      end
        #      blocking_move
        #      end
        # end

end
