class Student
  attr_reader :name

  def initialize(input)
    @name = input["name"]
  end

  def self.all
    all_student = Unirest.get('http://localhost:3000/api/v1/students.json',
      headers: {"Accept" => "application/json"}
    ).body
    @students = []
      all_student.each do |student|
        @students << Student.new(student)
      end
    @students
  end
end
