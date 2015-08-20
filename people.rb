class Student

	def learn
		"I get it!"
	end

	def to_s
		learn
	end

end


class Teacher
	def teach
		"Everything in Ruby is and Object"
	end

	def to_s
		teach		
	end
end

student = Student.new

puts student

teacher = Teacher.new

puts teacher