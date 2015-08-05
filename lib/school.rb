require 'pry'

class School

  attr_reader :roster

  def initialize(school_name)
    @roster = {}
    @name = school_name
  end

  def add_student(name, grade)
    if @roster[grade] 
      @roster[grade] << name
    else 
      @roster[grade] = [name]
    end
  end

  def grade(number)
    #@roster.select{|grade, student| grade == number}.values
    @roster[number]
  end

  def sort
    new_hash ={}
    @roster.map {|key, value| new_hash[key] = value.sort}
    new_hash
  end

end