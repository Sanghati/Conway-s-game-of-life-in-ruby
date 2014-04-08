class Cell
	attr_accessor  :cell_alive ,:x_cordinate, :y_cordinate
	def initialize(x,y)
		@cell_alive = false
		@x_cordinate = x
		@y_cordinate = y
	end

	def cell_alive?
		cell_alive
	end
	def cell_dead?
		!cell_alive 
	end
	def die!
		@cell_alive = false
	end
	def alive_again!
		@cell_alive = true
	end

end
