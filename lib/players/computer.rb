module Players
    class Computer < Player
        def move(board)
            valid_moves = []
            board.cells.each_with_index do |cell, index|
                if !board.taken?(cell)
                    valid_moves << index + 1
                end
            end
            valid_moves.to_s
        end
    end

end
