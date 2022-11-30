require "byebug"
class Board

    #starting with nil as the position on the board 
    attr_reader :grid
    def initialize
        @grid = Array.new(8) { Array.new(8, nil)}
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    #self refers to the current class instance explore line 23
    def move_piece(start_pos, end_pos)
        if self[start_pos] == nil
            raise "No piece at start pos"
        end

        # if self[]=(start_pos, end_pos).nil?    # nil? trying to check if the end pos is valid
        # checking to see if the positon is out of bounds (take in refernce the board size)
        # [0, 0] 
        if end_pos[0] >= 8 || end_pos[1] >= 8
            raise "Not valid position"
        else 
            self[start_pos] = end_pos
        end
    end
end
