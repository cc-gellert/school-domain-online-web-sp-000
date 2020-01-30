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
    if(ROSTER[grade] ||= []) 
      ROSTER[grade] << name 
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