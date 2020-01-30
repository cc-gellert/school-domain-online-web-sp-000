# code here!
class School 
  attr_accessor :roster 
  attr_reader :name 
  def initialize(name)
    @name = name 
  end 
  
  roster = {} 
  
  def add_student(name, grade)
    roster.each do |level, students|
      if(level == grade)
        students << name 
      end 
    end 
    roster[grade] = []
    roster[grade] << name 
  end 
  
  def grade(num)
    roster[num]
  end 
  
  def sort 
    ROSTER.sort 
  end 
end 