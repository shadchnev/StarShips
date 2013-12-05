module Helpers
	ALPHABET = ('a'..'z').to_a


	def letter(number)
		ALPHABET[number].upcase
	end

	def number(letter)
		ALPHABET.index(letter.downcase)
	end

	def select_cell(coordinates)
		x_position, y_position = coordinates_to_position(coordinates)
		Cell.first(x_position: x_position,y_position: y_position )
	end

	def coordinates_to_position(coordinates)
			array = coordinates.split(",")
			x_position = number(array[0])
			y_position = array[1].to_i - 1
			return x_position , y_position
	end


end