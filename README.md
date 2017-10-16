# Tic_tac_toe
A simple tic tac toe game built using Ruby and run on the command line.

### How to run:
```sh
# Clone the repo
git clone git@github.com:kitkat119/tic_tac_toe.git
# Move into the directory
cd tic_tac_toe
# Install the dependencies
bundle
# Run irb and load the files
./bin/load_files_and_start_irb
# Create a new game with two players and a board.
game = Game.new(Player.new("O"), Player.new("X"), Board.new)
# Use this command to check the state of the board.
game.board.state
# To check whose turn it is currently.
game.current_turn
# Current player makes a move, passing in their chosen index of the board. The turn automatically switches to the opponent.
game.make_move(game.current_turn, 8)
# Next player takes their move, and so on...
game.make_move(game.current_turn, 2)
```

### To run the tests:
```
rspec
```

### Specification

* There are two players in the game (X and O)
* Players take turns until the game is over
* A player can claim a field if it is not already taken
* A turn ends when a player claims a field
* A player wins if they claim all the fields in a row, column or diagonal
* A game is over if a player wins
* A game is over when all fields are taken

### Approach

I tried to use object oriented design principles and followed the single responsibility principle when breaking the program down into classes. Everything is run from the game class with the rest of the functionality happening behind the scenes. I possibly should have extracted a Turn class from Game but you could also argue that switching turns is related to Game's central purpose and so is a valid responsibility.

A game is created with two players, each of whom have a weapon of "X" or "O". They then take it in turns to make a move, which updates the board, adds the move to a record and then prints the result of the board checker to the console. If there is no winner and the game is not yet complete, the current turn is then switched to the opponent automatically.

I wrote my code using test driven development and have achieved 100% test coverage.
