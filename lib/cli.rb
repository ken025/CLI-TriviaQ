class CLI 
  
  def start 
  puts "Welcome to Trivia Q!"
  puts "This is a mid level, multiple choice quiz of General Knowledge"
  puts "Let's start!"
  puts "Press B to begin:"

  API.get_questions
  this_question

  end 
  
  def this_question
   puts '#{Trivia.all.first.question}'
   binding.pry 
    
  end 
end 