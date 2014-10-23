class Person
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def hello
		"Hi, my name is #{name}."
	end
end 

	class Student < Person

		def learn 
			"I get it!"
		end
	end

	class Instructor < Person

		def teach
			"Everything in Ruby is an Object"
		end
	end

student = Student.new("Christina")

instructor = Instructor.new("Chris")

puts student.hello
puts instructor.hello

puts instructor.teach
puts student.learn

puts student.teach

=begin
After calling the teach method on the student, an NoMethodError
is returned.  Student cannot utilize the teach method because it 
is not inherited from the Instructor class which contains the 
teach method.