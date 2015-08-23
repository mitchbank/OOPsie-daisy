
class Rover

attr_accessor :x, :y, :dir


def initialize(x, y, dir)
		@x = x.to_i
		@y = y.to_i
		@dir = dir.to_s
end

def read_instructions(instruction)
	instruction.each do |instruct|
		if instruct == "M"
			move
		elsif instruct == "L" || instruct == "R"
			turn(instruct)
		end	
	end
end

def move
	if @dir == "N"
		@y += 1
	elsif @dir == "S"
		@y -= 1
	elsif @dir == "E"
		@x += 1
	elsif @dir == "W"
		@x -= 1
	end
end

def turn(instructions)
	case instructions
when "L"
	if @dir == "N"
		@dir = "W"
	elsif @dir == "W"
		@dir = "S"
	elsif @dir == "S"
		@dir = "E"
	elsif @dir == "E"
		@dir = "N"
	end
when "R"
	if @dir == "N"
		@dir = "E"
	elsif @dir == "E"
		@dir = "S"
	elsif @dir == "S"
		@dir = "W"
	elsif @dir == "W"
		@dir = "N"
	end
end	
end

def to_s
	puts "#{@x} #{@y} #{@dir}"
end

end


puts "What is the size of the plateau?"
plateau = gets.chomp.split.map do |i|
	i.to_i
end

puts "What is the starting position of rover 1?"
pos1 = gets.chomp.split

puts "What is the starting position of rover 2?"
pos2 = gets.chomp.split

puts "What instructions will you give to rover 1?"
instruct1 = gets.chomp.split("")

puts "What instructions will you give to rover 2?"
instruct2 = gets.chomp.split("")

rover1 = Rover.new(pos1[0], pos1[1], pos1[2])

rover2 = Rover.new(pos2[0], pos2[1], pos2[2])

rover1.read_instructions(instruct1)
rover2.read_instructions(instruct2)


rover1.to_s
rover2.to_s









