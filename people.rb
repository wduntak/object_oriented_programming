class Person
	attr_accessor :name

	class Student
		def learn 
			"I get it!"
		end
	end

	class Instructor
		def teach
			"Everything in Ruby is an Object"
		end
	end
end

person = Person.new
person.name = "Wangdu"

puts person.name