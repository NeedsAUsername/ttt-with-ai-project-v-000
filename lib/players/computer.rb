module Players
    class Computer < Player
        def move(board)
            board.cells.each_with_index do |cell, index|
                if board.valid_move?(cell)
                    return index
                end
            end 
        end
    end

end
