module Players
    class Computer < Player
        def move(board)
            random = rand(1..9)
            if !board.valid_move?(random)
                self.move(board)
            end 
        end
    end

end
