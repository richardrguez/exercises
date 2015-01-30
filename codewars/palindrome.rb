#A palindrome is a word, phrase, number, or other sequence of symbols or elements, whose meaning may be 
#interpreted the same way in either forward or reverse direction. 
#Famous examples include "Amore, Roma", "A man, a plan, a canal: Panama" and "No 'x' in 'Nixon'". - wikipedia
#Our goal is to determine whether or not a given string is a valid palindrome or not.
#Like the above examples, here are a few test cases which are also populated:
#Amore, Roma" => valid
#"A man, a plan, a canal: Panama" => valid
#"No 'x' in 'Nixon'" => valid
#"Abba Zabba, you're my only friend" => invalid
#You can see that they are case insensitive and disregards non alphanumeric characters. 
#In addition to a few predefined tests, your function will also be tested against a random string generator
#50 times which are guaranteed to produce valid palindromes.
#NOTE: reverse/reverse! have been disabled for String/Array and reverse() for JS.
 
 
def palindrome(string)
	
	no_reversed = string.downcase.scan(/\w+/).join("")
	reversed = []
	index = 0
	
	no_reversed.length 	
	while index < no_reversed.length 
 	reversed[(no_reversed.length)-index-1] = no_reversed[index]
    	index += 1
	end
 
  no_reversed  == reversed.join("")

End
