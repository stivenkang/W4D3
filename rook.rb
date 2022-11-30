require_relative "piece"
require_relative "slideable"

class Rook < Piece
    include Slideable

    def symbol
        :R
    end
    #"symbol".colorize(color)

    private  # vs protected

    # return the directions in which a Rook can move
    # Rook moves horizontally and vertically
    def move_dirs
        
    end
end