module Players
    class Computer < Player
        def move(board)
            board.cells.detect {|cell| self.valid_move?(cell)}
        end
    end

end
