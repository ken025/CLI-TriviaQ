class API 
  
def self.get_questions 
resp = RestClient.get('https://opentdb.com/api.php?amount=15&category=9&difficulty=medium&type=multiple')

trivia_hash = JSON.parse(resp.body, symbolize_names:true)
trivia_arr = trivia_hash[:results]
 
triv_ques = trivia_arr.collect do | q |
    Trivia.new(q)
  end 
end 
end 
