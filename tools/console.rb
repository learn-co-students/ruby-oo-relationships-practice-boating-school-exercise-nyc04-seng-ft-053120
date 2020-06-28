require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Student.new("Billy")
s2 = Student.new("John")
s3 = Student.new("Samantha")
s4 = Student.new("Jasmine")

i1 = Instructor.new("Instructor Jeff")
i2 = Instructor.new("Instructor Cindy")

s1.add_boating_test("Initial", "pending", i1)
s2.add_boating_test("Initial", "pending", i1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

