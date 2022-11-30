class Board

    attr_reader :grid, :null_piece
    def initialize(grid, null_piece)
        @grid = Array.new(8) { Array.new(8, nil)}
        @null_piece = null_piece
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    def move_piece(color, start_pos, end_pos)
        if [start_pos] == @null_piece
            raise "No piece at start pos"
        elsif [start_pos] == self
            [self]=end_pos
        end

        # if self[]=(start_pos, end_pos).nil?    # nil? trying to check if the end pos is valid
        if [end_pos] == @null_piece
            self[]=(start_pos, end_pos)
        else
            raise "Not valid position"
        end
    end

end


class Piece
    def initialize(name, location)
        @name = name
        @location = location
    end
end