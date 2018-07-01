require 'pry'
class Board
    attr_accessor :cells

    def initialize
        self.reset!
    end

    def reset!
        @cells = Array.new(9, " ")
    end

    def display
        puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
        puts "-----------"
        puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
        puts "-----------"
        puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
    end

    def position(cell_number)
        conversion = cell_number.to_i - 1
        self.cells[conversion] if (0..8).include?(conversion)
    end

    def full?
        !self.cells.include?(" ")
    end

    def turn_count
         self.cells.select{|i| i == "O" || i == "X"}.length
     end

     def taken?(cell_number)
        self.position(cell_number) == "X" || self.position(cell_number) == "O"
     end

     def valid_move?(cell_number)
         position(cell_number) && !taken?(cell_number)
     end

     def update(cell_number, player)
         self.cells[cell_number.to_i - 1] = player.token
     end

end
