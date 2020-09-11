require 'pry'

class CLI 
  
  def start 
  puts "Welcome to Trivia Q!"
  puts "This is a mid level, multiple choice quiz of General Knowledge"
  puts "Let's start!"

  API.get_questions
  this_question
end 

  def this_question
   puts "#{Trivia.all.first.question}"
   Trivia.all.first.total_answers.flatten.each do 
  end 
end 