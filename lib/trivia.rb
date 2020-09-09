require 'pry'

class Trivia
  @@all = []
  
  attr_accessor :question, :correct_answer, :incorrect_answers, :total_answers
  
  def initialize(q)
     self.question = q[:question]
     self.correct_answer = q[:correct_answer]
     self.incorrect_answers = q[:incorrect_answers]
     
     @total_answers = []
     self.total_answers << correct_answer 
     self.total_answers << incorrect_answers
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end 


