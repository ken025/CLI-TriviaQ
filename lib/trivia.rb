require 'pry'

class Trivia
  @@all = []
  
  attr_accessor :question, :correct_answer, :incorect_answers, :total_answers
  
  def initialize(q)
     self.question = q[:question]
     self.correct_answer = q[:correct_answer]
     self.incorect_answers = q[:incorect_answers]
     self.total_answers << correct_answer 
     self.total_answers << incorect_answers
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end 


