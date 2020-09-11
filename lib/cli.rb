class CLI 
  
  def start 
    puts "Welcome to Trivia Q"
    puts "--------------------"
    puts "This is a mid level, multiple choice quiz of General Knowledge"
    puts "--------------------"
    puts "Let's start!"
  
    API.get_questions
    this_question
    new_question
end 

  def this_question
   question_str = Trivia.all.first.question
   question_crrct = question_str.gsub("&quot;",'"').gsub("&#039;","'").gsub("&amp;","&")
   puts "\n #{question_crrct}"
   
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
    puts "\n Would you like to try again?"
    puts "Enter: Y (to try again) or N (to try skip)"
    another_ques = gets.chomp.downcase
    if another_ques == "y"
      this_question
    elsif another_ques == "n"
      puts "\n The answer you were looking for was:  #{Trivia.all.first.correct_answer}."
  end 
end 

  def new_question
    puts "\n Would you like to play again?"
    puts "Enter Y (to continue playing) or N (to exit)"
    input = gets.chomp.downcase
    if input == "y" 
      this_question
    elsif input == "n"
      puts "I'm sad to see you go, hope you enjoyed!"
        exit
    end
  end 
end 