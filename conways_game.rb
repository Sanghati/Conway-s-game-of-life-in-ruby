require_relative './game'
require_relative './grid'

grid =  Grid.new(3,3)

game = Game.new(grid,[[0, 1], [1, 1]])
game.play!
