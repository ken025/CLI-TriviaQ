require 'pry'

class Trivia
  @@all = []
  
  attr_accessor :triviaQ
  
  def initialize(questions)
    self.trivia_q = question[:questions]
    self.trivia_a = questions[:correct_answer]
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  binding.pry
end 


