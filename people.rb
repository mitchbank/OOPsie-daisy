class Person

	def initialize(first_name, last_name)
		@@first_name = first_name
		@@last_name = last_name
	end
end

class Student < Person

	def learn
		"I get it!"
	end

	def to_s
		"Hi, my name is #{@@first_name} #{@@last_name}"
	end

end


class Teacher < Person
	def teach
		"Everything in Ruby is and Object"
	end

	def to_s
		"Hi, my name is #{@@first_name} #{@@last_name}"
	end
end

student = Student.new("Keener", "Studint")

puts student

teacher = Teacher.new("Linus", "Techtips")

puts teacher