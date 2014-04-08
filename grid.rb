require_relative './cell'

class Grid
	
	attr_accessor  :rows, :cols, :cell_grid, :cells
	def initialize(rows, cols)
		@rows = rows
		@cols = cols
		@cells = []
		@cell_grid = Array.new(rows) do |row|
				Array.new(cols) do |col|
				     Cell.new(col,row)
				end 
			         end
	              cell_grid.each do |row|
      			row.each do |element|
        				if element.is_a?(Cell)
          				cells << element
       				 end
      			end
      		end
	end

		
	def count_live_neighbours(cell)
		live_neighbours = []

		# alive neighbours to the north
		if cell.y_cordinate > 0
			alive_cell = self.cell_grid[cell.y_cordinate - 1][cell.x_cordinate]
			live_neighbours << alive_cell if alive_cell.cell_alive?
		end
		
		# alive neighbours to the south
		if (cell.y_cordinate <  rows-1)
			alive_cell = self.cell_grid[cell.y_cordinate + 1][cell.x_cordinate]
			live_neighbours << alive_cell if alive_cell.cell_alive?
		end

		# alive neighbours to the west
		if cell.x_cordinate > 0
			alive_cell = self.cell_grid[cell.y_cordinate][cell.x_cordinate - 1]
			live_neighbours << alive_cell if alive_cell.cell_alive?
		end

		# alive neighbours to the east
		if (cell.x_cordinate < cols - 1)
			alive_cell = self.cell_grid[cell.y_cordinate][cell.x_cordinate + 1]
			live_neighbours << alive_cell if alive_cell.cell_alive?
		end

		# alive neighbours to the north-east
		if (cell.y_cordinate > 0) && (cell.x_cordinate < cols - 1)
			alive_cell = self.cell_grid[cell.y_cordinate + 1][cell.x_cordinate - 1]
			live_neighbours << alive_cell if alive_cell.cell_alive?
		end

		# alive neighbours to the south-east
		if (cell.y_cordinate < rows - 1) && (cell.x_cordinate < cols - 1)
			alive_cell = self.cell_grid[cell.y_cordinate + 1][cell.x_cordinate + 1]
			live_neighbours << alive_cell if alive_cell.cell_alive?
		end

		# alive neighbours to the north-west
		if cell.y_cordinate > 0 && cell.x_cordinate > 0
			alive_cell = self.cell_grid[cell.y_cordinate - 1][ cell.x_cordinate - 1]
			live_neighbours << alive_cell if alive_cell.cell_alive?
		end

		# alive neighbours to the south-west
		if (cell.y_cordinate < rows - 1) && cell.x_cordinate > 0
			alive_cell = self.cell_grid[cell.y_cordinate + 1][cell.x_cordinate - 1]
			live_neighbours << alive_cell if alive_cell.cell_alive?
		end

		live_neighbours
	end
end
