# code here!

class School
  attr_accessor :name
  attr_reader :roster
  

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end
  
   def add_student(student_name, grade)
     @roster[grade] ||= []
     @roster[grade] << student_name
   end

   def grade(grade)
     @roster[grade]
   end

   def sort
    sorted = {}
     @roster.each do |grade, students|
      sorted[grade] = students.sort
     end
    sorted
   end
end
