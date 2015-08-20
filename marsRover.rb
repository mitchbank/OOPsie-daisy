
class Rover

	attr_accessor = :x, :y, :direction

	def initialize(x, y, direction)
		@x = x.to_i
		@y = y.to_i
		@direction = direction.to_s
	end

	def read_instruction(instructions)
		instructions.each do |instruct|
		if instruct == "M"
			move
		elsif instruct == "L" || instruct == "R"
			turn(instruct)
		end
		end
	end

	def move
		case @direction
		when "N"
			if @y != $size[1]
				@y += 1
			end
		when "E"
			if @x != $size[0]
				@x += 1
			end
		when "S"
			if @y != 0
				@y -= 1
			end
		when "W"
			if @x != 0
				@x -= 1
			end			
		end
	end

	def turn(instructions)
		case instructions
		when "L"
			if @direction == "N"
				@direction = "W"
			elsif @direction == "W"
				@direction = "S"					
			elsif @direction == "S"
				@direction = "E"
			elsif @direction == "E"
				@direction = "N"
			end
		when "R"
			if @direction == "N"
				@direction = "E"
			elsif @direction == "E"
				@direction = "S"				
			elsif @direction == "S"
				@direction = "W"
			elsif @direction == "W"
				@direction = "N"
			end
		end
	end

	def to_s
		puts "#{@x} #{@y} #{@direction}"
	end
end

puts "Please enter the max coordinates of the plateau (e.g. 9 9)"
$size = gets.chomp.split(" ").map do |i| 
	i.to_i
end

puts "What is the rover1's initial starting point and direction (eg 1 2 N)"
rover1start = gets.chomp.split

puts "What is the rover2's initial starting point and direction (eg 1 2 N)"
rover2start = gets.chomp.split

puts "What move and turn instructions do you want to give the rover1?(eg LMRM"
instruction1 = gets.chomp.split("")

puts "What move and turn instructions do you want to give the rover2?(eg LMRM"
instruction2 = gets.chomp.split("")


rover1 = Rover.new(rover1start[0], rover1start[1], rover1start[2])
rover2 = Rover.new(rover2start[0], rover2start[1], rover2start[2])

rover1.read_instruction(instruction1)
rover2.read_instruction(instruction2)

rover1.to_s
rover2.to_s










