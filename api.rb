require 'rest-client'
require 'json'
require 'pry'


resp = RestClient.get('https://opentdb.com/api.php?amount=15&category=9&difficulty=medium&type=multiple')

trivia_hash = JSON.parse(resp.body, symbolize_names:true)

trivia_arr = trivia_hash[:results]
quest_arr = trivia_arr.collect { |x| x[:question] }

binding.pry 

trivia_questions = trivia_arr.collect do |question|
  Trivia.new(question)
end 