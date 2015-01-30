#Complete the function/method so that it takes CamelCase string and returns the string 
#in snake_case notation. Lowercase characters can be numbers. If method gets number, it should return string.
#Examples:
## returns test_controller
#to_underscore('TestController')

# returns movies_and_books
#to_underscore('MoviesAndBooks')

# returns app7_test
#to_underscore('App7Test')

# returns "1"
#to_underscore(1)

def to_underscore(string)
   result = []
   
    if string.to_s.length > 1
     string.scan(/[A-Z][a-z0-9]+/) do |word|
       	result << word.downcase << "_" 
     end
    else 
      return string.to_s
    end
  
  result.join("_") #insert a underscore between to element of any array
end







