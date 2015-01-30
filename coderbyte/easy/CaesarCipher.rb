Using the Ruby language, have the function CaesarCipher(str,num) take the str parameter and perform a Caesar Cipher shift on it using the num parameter as the shifting number. A Caesar Cipher works by shifting each letter in the string N places down in the alphabet (in this case N will be num). Punctuation, spaces, and capitalization should remain intact. For example if the string is "Caesar Cipher" and num is 2 the output should be "Ecguct Ekrjgt".

Use the Parameter Testing feature in the box below to test your code with different arguments.      


def CaesarCipher(str,num)
  new_s = str.split
  n_word = []
  n_phrase = []

  new_s.each do |word| 
    word.split('').each do |letter|
      num.times { letter.next! }
      n_word << letter
     end
    n_phrase << n_word.join('')
    n_word = []
  end
    
  # code goes here
  return n_phrase.join(' ') 
         
end
