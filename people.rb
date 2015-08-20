class Person

	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end

	def to_s
		"Hi, my name is #{@first_name} #{@last_name}"
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

puts student.learn

puts teacher.teach

# if we were to try and call the learn methond for the teacher
# or the teach method for the student, it wouldn't work
# because the student class cannot call a method from the 
# teacher class and vice versa