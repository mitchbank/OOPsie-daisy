class Person

	def initialize(first_name, last_name)
		@@first_name = first_name
		@@last_name = last_name
	end

	def to_s
		"Hi, my name is #{@@first_name} #{@@last_name}"
	end
end

class Student < Person

	def learn
		"I get it!"
	end
end


class Teacher < Person
	def teach
		"Everything in Ruby is and Object"
	end
end

student = Student.new("Christina", "Balor")

puts student

teacher = Teacher.new("Chris", "Bale")

puts teacher