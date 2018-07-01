module Players
    class Computer < Player
        def move(board)
            valid = false
            while valid = false
                random = rand(0..8)
                if board.valid_move?(random)
                    valid = random
                end
            end
            random
        end
    end

end
