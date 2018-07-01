module Players
    class Computer < Player
        def move(board)
            board.cells.detect {|cell| cell == " "}
        end
    end

end
