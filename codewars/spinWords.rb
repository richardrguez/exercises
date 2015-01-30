#Write a function that takes in a string of one or more words, and returns the same string, 
#but with all five or more letter words reversed (Just like the name of this Kata).
#Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

#Examples:
#spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" 
#spinWords( "This is a test") => returns "This is a test" 
#spinWords( "This is another test" )=> returns "This is rehtona test"
 
#code
def spinWords(string)
  result = []
  string.split.each do |word| #split por defecto con espacio
  	if word.length >= 5
    	result << word.reverse
  	else
    	result << word
  	end    
 
	#result <<  word.length > 4 ? word.reverse : word #me dio problema
  end
  result.join(" ") #.join no junta con espacio
end
