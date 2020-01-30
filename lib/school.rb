# code here!
class School 
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
    roster.sort 
  end 
end 