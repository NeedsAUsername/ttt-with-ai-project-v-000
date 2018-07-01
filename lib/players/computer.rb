module Players
    class Computer < Player
        def move(board)
            valid_moves = []
            board.cells.each_with_index do |cell, index|
                if !board.taken?(cell)
                    valid_moves << (index + 1).to_s
                end
            end
            valid_moves
        end
    end

end
