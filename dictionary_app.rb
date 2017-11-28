require 'unirest'

p "What word would you like information on?"

while word = gets.chomp
  case word
  when "q"
    p "Thank you for using the app."
    break
  else
    definition_response = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{word}/definitions?limit=200&includeRelated=true&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

    dictionary_definition = definition_response.body
    definition = dictionary_definition[0]["text"]

    p "The definition of the word you requested is: " + definition

    examples_response = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{word}/examples?includeDuplicates=false&useCanonical=false&skip=0&limit=5&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

    dictionary_examples = examples_response.body
    top_example = dictionary_examples["examples"][0]["text"]

    p "Here is an example of how you can utilize the word you requested: " + top_example

    pronunciation_response = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

    dictionary_pronunciation = pronunciation_response.body
    pronunciation = dictionary_pronunciation[0]["raw"]

    p "Here is how you pronounce the word you requested: " + pronunciation
  end
  p "Please enter another word or enter q to quit"
end




