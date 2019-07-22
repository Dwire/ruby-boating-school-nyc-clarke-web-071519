require_relative '../config/environment.rb'
require 'pry'  

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
student1 = Student.new('Andrew')
student2 = Student.new('AJ')
student3 = Student.new('Jason')
student4 = Student.new('Varun')

inst1 = Instructor.new('Greg')
inst2 = Instructor.new('Tony')
inst3 = Instructor.new('Sebastian')


bt = BoatingTest.new(student1, inst1, 'first test', 'fail')

student4.add_boating_test(inst2, 'final test', 'passed')
student3.add_boating_test(inst3, 'final test', 'passed')
student2.add_boating_test(inst2, 'final test', 'passed')
student1.add_boating_test(inst1, 'final test', 'passed')




binding.pry
0 #leave this here to ensure binding.pry isn't the last line

