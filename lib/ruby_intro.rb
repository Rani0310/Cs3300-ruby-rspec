# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  #creates sum variable and initilizes it
  sum = 0;
  #goes though each element in the array and adds it to sum
  arr.each {|a| sum += a}
  #returns sum value
  return sum;
end

def max_2_sum arr
  #saves length of array
  length = arr.size
  #checks if the array has 0 elemts and return 0 if true
  if length == 0
    return 0
  #checks if length is 1 and returns the value of the element
  elsif length == 1
    return arr.at(0) 
  #array length 2 or greater
  else
    #sorts array
    arr = arr.sort()
    #saves largest element
    largest = arr.at(length-1)
    #saves second largest element
    secondLargest = arr.at(length-2)
    #adds and returns 2 largest elements
    sum = largest + secondLargest
    return sum
    
  end    
end

def sum_to_n? arr, n

  #saves length
  length = arr.length
  #if array length is greater than 1, enter for iterations
  if length > 1
    #goes through every element in the array staring at index 1
    for i in 1..length - 1
      #j is set one element behind i
      for j in 0..i-1
        #checks if n is equal to sum of current i and j
        if arr[i] + arr[j] == n
          #return true
          return true
        end
      end
    end
  end
  #return false if less than 2 elements or no i+j=n
  return false
end

# Part 2

def hello(name)
  
  #return Hello + incoming name
  return "Hello, #{name}"
end

def starts_with_consonant? s

  #checks if a line starts with any vowel in any case and nonletter characters
  if /^[^aeiouAEIOU\W]/.match(s) == nil
    #if s does not start with consonant
    return false
  end
  #if s does start with consonant
  return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
 
  #allows isbn and price to be used outside of method
   attr_accessor :isbn, :price
  
   #constructor
    def initialize isbn, price
      #checks if isbn is empty and price <= zero, throw error
      raise ArgumentError if isbn.empty? || price <= 0
      @isbn = isbn
      @price = price
    end
  
    #format price string
    def price_as_string
      "$%.2f" % @price
    end
  
  
end



