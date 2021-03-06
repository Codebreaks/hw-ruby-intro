# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length > 0
      puts "array is greater than zero"
      i = 0
      sumOverall =0
      while i < arr.length
          sumOverall= sumOverall + arr[i]
          i = i+1
      end
      puts sumOverall
      return sumOverall
  else
      puts "array have nothing"
      x = 0
      return x
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length > 1
      #######
      #puts "array is greater than zero"
      i = 0
      largeOne =-(2**8)
      largeTwo =-(2**8)
      while i < arr.length
          if arr[i]> largeOne
              largeOne = arr[i]
              hit = i
          end
          i +=1
      end
      i = 0
      while i < arr.length
          if arr[i] > largeTwo
              if i != hit
                  largeTwo = arr[i]
              end
          end
          i +=1
      end
      sumOverall = largeOne + largeTwo
      #puts sumOverall
      #puts largeOne
      #puts largeTwo
      return sumOverall
      ########
  elsif arr.length == 0
      ########
      #puts "array have nothing"
      x = 0
      return x
      ########
  elsif arr.length == 1
      ########
      #puts "array have one element"
      return arr[0]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE

  i=0
  if arr.length > 1
      while i < arr.length
          inc =0
          sum=0
          while inc < arr.length
              sum = arr[i] + arr[inc]
              if sum == n
                  if arr[i] != arr[inc]
                      return true
                  end
              end
              inc +=1
          end
          i +=1
      end
      if i == arr.length
          return false
      end
  elsif arr.length == 1
      return false
  else
      return false
  end
end

# Part 2 #####################################################################

def hello(name)
  # YOUR CODE HERE
  String greetings = "Hello, " + name
  return greetings
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # return true if it starts with a constant
  validChar = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
  case s[0]
  when 'A', 'E', 'I', 'O', 'U'
      return false
  when 'a', 'e', 'i', 'o', 'u'
      return false
  when 'b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z'
      return true
  when 'B','C','D','F','G','H','J','K','L','M','N','P','Q','R','S','T','V','W','X','Y','Z'
      return true
  else
      return false
  end

end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  i=0
  num = 0

  if s == ''
     puts 'yod'
     return false
  end
  while i<s.length
      inc = s.length-1-i
      case s[inc]
      when '1'
          num = num + 2**i

      when '0'
      else
           return false
      end
      i +=1
  end
  val = num%4
  if val == 0
      return true
  else
      return false
  end


end
def valid?(str)
  (str =~ /[^a-zA-Z0-9]/).nil?
end

# Part 3 ##################################################################

class BookInStock
# YOUR CODE HERE
    def initialize(isbn,price)
        if isbn == ''
            raise ArgumentError
        else
            @isbn = isbn
        end
        if price > 0
            @price = price
        else
            raise ArgumentError
        end
    end
    ## Setters
    def price=(price)
        @price = price
    end
    def isbn=(isbn)
        @isbn = isbn
    end
    ## Getters
    def isbn
        @isbn
    end
    def price
        @price
    end
    ## Methods
    def price_as_string
        return "$%.2f"%[price]
    end
end
