module Players
    class Computer < Player
        def move(board)
            # move = rand(1..9).to_s
            WIN_COMBINATIONS = [
                [0, 1, 2], [3, 4, 5], [6, 7, 8],
                [0, 3, 6], [1, 4, 7], [2, 5, 8],
                [0, 4, 8], [2, 4, 6]
              ]

           # make winning move
           

           WIN_COMBINATIONS.each do |combination|
               if board.
        end
    end
end
