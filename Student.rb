class Student
  attr_accessor :name, :grade

  def initialize(name, grade)
    self.name = name
    self.grade = grade
  end

  def better_grade_than?(otherStudent)
    self.grade > otherStudent.grade ? true : false
  end

  protected

  def grade
    @grade
  end

end

joe = Student.new("Joe", 80)
joe.grade = 90
bob = Student.new("Bob", 70)
puts "Well done!" if joe.better_grade_than?(bob)