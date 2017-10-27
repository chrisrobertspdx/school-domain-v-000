# code here!
class School
  attr_reader :name
  def initialize(name) 
    @name = name
    @roster = {}
  end
  def add_student(name,grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
  end
  def grade(num)
    @roster[num].join(', ')
  end
end