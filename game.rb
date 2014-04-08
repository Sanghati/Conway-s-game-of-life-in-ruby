require_relative './grid'

class Game
	attr_accessor  :grid
	def initialize(grid,cells_value)
		@grid = grid
		@cells_value = []
		cells_value.each do |cell|
		 	grid.cell_grid[cell[1]][cell[0]].cell_alive = true
		end
	end
	def play!
		live_cells = []
		dead_cells = []
		@grid.cells.each do |cell|
			live_neighbour_count = self.grid.count_live_neighbours(cell).count
			
			# Rule number 1
			if cell.cell_alive? && live_neighbour_count < 2
				dead_cells  << cell
			end
			#Rule number 2
			if cell.cell_alive? && (live_neighbour_count == 2 || live_neighbour_count == 3)
				live_cells << cell
			end
			#Rule number 3
			if cell.cell_alive? && live_neighbour_count > 3
				dead_cells << cell
			end
			#Rule number 4
			if cell.cell_alive? && live_neighbour_count == 3
				live_cells << cell
			end
		end

		live_cells.each do |cell|
			cell.alive_again!
		end
		dead_cells.each do |cell|
			cell.die!
		end
	end
end
