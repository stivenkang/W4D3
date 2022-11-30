module Stepable
    # create an array to collect moves
    # iterate through each of the piece's possible move_diffs
        # for each move_diff, increment the piece's position to generate a new position
        # add the new position to the moves array if:
            # on the board and empty
            # OR on the board and contains a piece of the opposite color
    # return the final array of moves
    def moves
    end

    private

    # subclass implements this only if we have forgotten to implement it in our subclass
    def move_diffs
        raise NotImplementedError
    end
end