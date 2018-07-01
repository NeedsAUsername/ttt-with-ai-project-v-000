module Players
    class Computer < Player
        def move(board)
            valid_moves = []
            board.cells.each do |cell|
                if board.valid_move?(cell)
                    valid_moves << cell
                end
            end
            valid_moves
        end
    end

end
