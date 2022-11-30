require_relative "piece"
require_relative "slideable"

class Rook < Piece
    include Slideable

    def symbol
        "♖".colorize(color)
    end
    #"symbol".colorize(color)

    protected  # vs  private

    # return the directions in which a Rook can move
    # Rook moves horizontally and vertically
    def move_dirs
        self.horizontal_dirs
    end
end