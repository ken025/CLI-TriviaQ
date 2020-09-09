require 'pry'

class Trivia
  @@all = []
  
  attr_accessor :question
  
  def initialize(q)
    self.question
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
end 


