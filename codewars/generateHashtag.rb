#The marketing team are spending way too much time typing in hashtags.
#Let's help them with out own Hashtag Generator!
#Here's the deal:
#If the final result is longer than 140 chars it must return false.
#If the input is a empty string it must return false.
#It must start with a hashtag (#).
#All words must have their first letter capitalized.
#Example Input to Output:
#" Hello there thanks for trying my Kata" => "#HelloThereThanksForTryingMyKata"
#" Hello World " => "#HelloWorld"

#codes

def generateHashtag(str)
  text = "#" + str.split(" ").map(&:capitalize).join("")      
  
  if text.length > 140 || text.length == 1 #only # symbol
    false 
  else 
    text
  end 
end

