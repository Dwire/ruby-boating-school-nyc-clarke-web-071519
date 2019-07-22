class Student
  attr_reader :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_student(name)
    self.all.find {|student| student.first_name == name} 
  end

  def add_boating_test(instructor, name, status)
    BoatingTest.new(self, instructor, name, status)
  end

  def my_tests
    BoatingTest.all.select {|test| test.student == self}
  end 

  def number_of_tests
    self.my_tests.length
  end 

  def instructors
    self.my_tests.map {|test| test.instructor.name }
  end

  def grade_percentage
    passed_tests = my_tests.select {|test| test.status == 'passed'}   
    # binding.pry
    passed_tests.length.to_f / number_of_tests
  end

end



# Student#grade_percentage should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)

# -----------DONE---------------
# should initialize with first_name
# Student.all should return all of the student instances
# Student.find_student will take in a first name and output the student (Object) with that name
# Student#add_boating_test should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# umber_of_tests - Shows number of test a student has taken
# instructors returns an array of instructor names