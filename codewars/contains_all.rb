#We want to extend the array class so that it provides a contains_all? method. 
#This method will always assume that an array is passed in and will return 
#true if all values within the passed in array are present within the current array.
#For example:

#items = [1, 2, 3, 4, 5, 6, 7, 8, 9]

#items.contains_all?([1, 2, 3]) # should == true
#items.contains_all?([1, 5, 13]) # should == false because 13 is not within the items array

#code

class Array
  def contains_all?(other_array)
      other_array.all? {|x| self.include?(x)}
      
     # complete this method so that true is returned if the current array
    # instance contains all values within the other_array instance.
  end
end
