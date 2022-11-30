module Slideable

    #HORIZONTAL DIRS stores an array of horizontal directions
    HORIZONTAL_DIRS = [
        [:dx, :dy], #left
        [:dx, :dy], #right
        [:dx, :dy], #up
        [:dx, :dy] #down
    ].freeze

    # DIAGONAL_DIRS stores an array of diagonal directions
    DIAGONAL_DIRS = [
        [:dx, :dy], #up + left
        [:dx, :dy], #up + right
        [:dx, :dy], #down + left
        [:dx, :dy] #down + right
    ].freeze

    #getters to access them
    def horizontal_dirs
    end

    def diagonal_dirs
    end

    # should return an array of moves the piece can move on the board
    # create an array to collect moves
    # iterate over each of the directions in which a slideable piece can move
        # use the Piece subclass' #move_dirs method to get this info
        # for each direction, collect all the possible moves in that direction
            # and add them to your moves array
            # (use the grow_unblocked_moves_in_dir helper method)
    # return the final array of moves (containing all possible moves in all directions)
    def move
    end

    private

    # subclass implements this, only executes if we have forgotten to implement it in our SubClass
    def move_dirs
        raise NotImplementedError
    end

    # this helper method only responsible for collecting all moves in a given direction
    # the given direction is represented by two args, the combination of a dx and dy
        # create an array to collect moves
        # get the piece's current row and current columm
        # in a loop:
            # continually incrememnt the piece's current row and current column to generate the next position
            # stop looping if the next position if invalid (not onthe board); the piece can't move in this direction
            # if the next position is empty, the piece can move here, so add the next position to our moves array
            # if next position is occupied with a piece of the opposite color, the piece can move here (to capture the opposite piece), so we still add the next position to the moves array
            # however, the piece cannot continue to move past this piece, stop looping
            #if the next position is occupied with a piece of the same color, stop looping
        # return the final moves array
    def grow_unblocked_moves_in_dir(dx, dy)

    end
end

# NOTE: you can invoke methods fro the piece from within the module methods, and vice versa.
# It is a two way street