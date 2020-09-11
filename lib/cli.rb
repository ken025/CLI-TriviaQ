require 'pry'

class CLI 
  
  def start 
  puts "Welcome to Trivia Q"
  puts "--------------------"
  puts "This is a mid level, multiple choice quiz of General Knowledge"
  puts "--------------------"
  puts "Let's start!"

  API.get_questions
  this_question
end 

  def this_question
    puts "#{Trivia.all.first.question}"
  # question_str = Trivia.all.first.question
  # fixed_ques = question_str.gsub("&#039;", "'") #, ("&ldquo;", "")
   options = Trivia.all.first.total_answers.flatten.each.with_index(1) {|ansr, i| puts "#{i}. #{ansr}"}
   
   user_ansr = gets.chomp.to_i-1 
   if !user_ansr.between?(0,3)
    puts "That is not one of the available options."
      re_atttempt
   elsif options[user_ansr] == Trivia.all.first.correct_answer
     puts "Correct!"
   else options[user_ansr] == Trivia.all.first.incorrect_answers
    puts "Hmm, not quite!"
      re_atttempt
  end 
end 

def re_atttempt
  puts "\n"
  puts "Would you like to try again?"
  puts "Enter: Y (to continue) or N (to exit)"
  another_ques = gets.chomp.downcase
  
  if another_ques == "y"
    this_question
  elsif another_ques == "n"
  "I'm sad to see ypu go! Hope you enjoyed!"
  exit
end 
end 
end 