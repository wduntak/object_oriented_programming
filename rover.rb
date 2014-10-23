=begin
  _ _ _ _ _ _ _ _ _
9|_|_|_|_|_|_|_|_|_|        N
8|_|_|_|_|_|_|_|_|_|      W   E
7|_|_|_|_|_|_|_|_|_|        S
6|_|_|_|_|_|_|_|_|_|
5|_|_|_|_|_|_|_|_|_|
4|_|_|_|_|_|_|_|_|_|
3|_|_|_|_|_|_|_|_|_|
2|_|_|_|_|_|_|_|_|_|
1|_|_|_|_|_|_|_|_|_|
0 1 2 3 4 5 6 7 8 9
=end

class Rover
	attr_accessor(:x, :y, :direction, :instruction)

	def initialize(x, y, direction, instruction)
		@x = x
		@y = y
		@direction = direction
		@instruction = instruction

	end

	
	def move
		if @direction == "N"
			@y += 1
		elsif @direction == "E"
			@x += 1
		elsif @direction == "S"
			@y -= 1
		elsif @direction == "W"
			@x -= 1
		end 
			
	end

	def turn_left
		if @direction == "N"
			@direction = "W"
		elsif @direction == "W"
			@direction == "S"
		elsif @direction == "S"
			@direction = "E"
		elsif @direction == "E"
			@direction = "N"
		end
	end

	def turn_right
		if @direction == "N"
			@direction = "E"
		elsif @direction == "E"
			@direction = "S"
		elsif @direction == "S"
			@direction = "W"
		else @direction == "W"
			@direction = "N"
		end
	end

end

puts "What point along 'x' would you like to being?"
x_point = gets.chomp.to_i

puts "What point along 'y' would you like to being?"
y_point = gets.chomp.to_i

puts "Which direction would you like to face?(N/E/S/W)"
dir_point = gets.chomp.to_s

puts "Where would you like to go? (Input 'M' to move forward, 'L' to rotate left, 'R' to rotate right)"
move_point = gets.chomp.split(//)
	


rover1 = Rover.new(x_point, y_point, dir_point, move_point)
rover1.turn_left

puts rover1.direction


