class Trivia
  @@all = []
  attr_accessor :question, :correct_answer, :incorrect_answers, :total_answers
  
  def initialize(q)
    @total_answers = []
     self.question = q[:question]
     self.correct_answer = q[:correct_answer]
     self.incorrect_answers = q[:incorrect_answers]
     self.total_answers << correct_answer 
     self.total_answers << incorrect_answers
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.reset 
    self.all.clear
  end 
end 


