require 'pry'

class Trivia
  @@all = []
  
  attr_accessor :triviaQ
  
  def initialize(questions)
    self.triviaQ = question[:questions]
    self.triviaA = questions[:correct_answer]
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  binding.pry
end 


