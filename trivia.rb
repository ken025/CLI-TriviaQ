require 'pry'

class Trivia
  @@all = []
  
  attr_accessor :questions
  
  def initialize(question)
    self.name = question[questions]
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  binding.pry
end 


