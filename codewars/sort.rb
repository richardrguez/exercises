#Given a standard english sentence passed in as a string, write a method that will return a sentence comprised 
#of the same words, but sorted by their first letter. However, the method of sorting has a twist to it:
#All words that begin with a lower case letter should be at the beginning of the sorted sentence, and sorted 
#in ascending order. All words that begin with an upper case letter should come after that, and should be sorted 
#in descending order. If a word appears twice in the sentence, it should be returned twice in the sorted sentence. 
#Any punctuation must be discarded.
#For example, given the input string "Land of the Old Thirteen! Massachusetts land! land of Vermont and Connecticut!", 
#your method should return "and land land of of the Vermont Thirteen Old Massachusetts Land Connecticut". 
#Lower case letters are sorted a->l->l->o->o->t and upper case letters are sorted V->T->O->M->L->C.

#code

def sort sentence
  result_low = []
  result_high = []
  sentence = sentence.scan(/\w+/).join(" ")

  sentence.split(" ").each do |word|
    if word == word.downcase 
      result_low << word 
    else 
      result_high << word
    end
   end

    #mejor solucion: (result_low + result_high).join(“ ”) #contactena los arr
    if result_high.empty?
      result_low.sort.join(" ")
    elsif result_low.empty?
      result_high.sort.reverse.join(" ")
    else      
      result_low.sort.join(" ") + " " + result_high.sort.reverse.join(" ")
    end
end
