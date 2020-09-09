require_relative 'trivia'
require 'rest-client'
require 'json'
require 'pry'


resp = RestClient.get('https://opentdb.com/api.php?amount=15&category=9&difficulty=medium&type=multiple')

trivia_hash = JSON.parse(resp.body, symbolize_names:true)

trivia_arr = trivia_hash[:results]
quest_arr = trivia_arr.collect { |x| x[:question] }

quest_arr = trivia_arr.collect { |questions| questions[:question]}
    Trivia.new(questions)
end 

ansr_arr = trivia_arr.collect { |answer| answer[:correct_answer]}


binding.pry

trivia_questions = quest_arr.collect do |questions|
  Trivia.new(questions)
end 
  
trivia_questions.each do | qs |
  resp = RestClient.get(qs.correct_answer)
end 
