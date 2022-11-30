require_relative "board"

class Piece

    attr_reader :color, :board, :pos
    def initialize(color, board, pos)
        @color = color
        @board = Board.new
        @pos = []
    end

    def to_s

    end


    def empty?
        return true if Board[@pos] == nil
        false
    end


    def valid_moves

    end


    def pos=(val)
        @pos = [val]
    end


    def Symbol
        
    end


    private
    def move_into_check?(end_pos)

    end
end