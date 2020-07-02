require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#binding.pry
#0 #leave this here to ensure binding.pry isn't the last line

s1 = Student.new("Bob")
s2 = Student.new("Thompson")
s3 = Student.new("Dickson")
s4 = Student.new("Sainton")
s5 = Student.new("Lola")

i1 = Instructor.new("name")
i2 = Instructor.new("Master_Instructor")
i3 = Instructor.new("SailBoatqueen")

b1 = BoatingTest.new(s1, "test", i1, "passed")
b2 = BoatingTest.new(s3, "test", i1, "failed")
b3 = BoatingTest.new(s2, "test", i2, "passed")
b4 = BoatingTest.new(s4, "test", i3, "failed")


# puts s1.class.find_student("Thompson")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line