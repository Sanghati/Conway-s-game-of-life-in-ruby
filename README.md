                                              Conway's game of life in ruby

==========================================================================================================================
Game of Life is a cellular automaton game devised by the British Mathematician John Horton Conway. The original game is a zero player game. The evolution of it depends entirely on its input. 

Game of life takes place on a 2D grid. Each cell in the grid will be in one of the two possible states,

ALIVE

DEAD

The birth or death of the cells is based on the following rules.

1. A cell switches from DEAD to ALIVE if its surrounded exactly by 3 living cells.
2. A cell remains alive if its surrounded by 2 or 3 living cells.
3. A cell switches from being ALIVE to DEAD if its surrounded by more than 3 living cells because of over population.
4. A cell switches from being ALIVE to DEAD if its surrounded by less than 2 cells because of under population.
