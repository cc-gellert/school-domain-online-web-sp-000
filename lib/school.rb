# code here!
class School 
  attr_accessor :roster 
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
      end 
    end 
    ROSTER[grade] = []
    ROSTER[grade] << name 
  end 
  
  def grade(num)
    ROSTER[num]
  end 
  
  def sort 
    ROSTER.sort 
  end 
end 