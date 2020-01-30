# code here!
class School 
  attr_reader :name 
  
  def initialize(name)
    @name = name 
  end 
  
  ROSTER = {} 
  
  def roster 
    ROSTER 
  end 
  
  def add_student(name, grade)
    ROSTER.each do |level, students|
      if(level == grade)
        students << name 
      else 
        ROSTER[grade] = []
        ROSTER[grade].push(name)
      end 
    end 
  end 
  
  def grade(num)
    ROSTER[num]
  end 
  
  def sort 
    ROSTER.map do |level, students|
      students.flatten.sort 
    end 
  end 
end 