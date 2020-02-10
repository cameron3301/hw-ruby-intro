# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # if array is empty, return 0
  if arr.length < 1
    return 0
  else
    x = 0
    for i in 0...arr.length
      x = x + arr[i]
    end
    return x
  end
end

def max_2_sum arr
  if arr.length < 1
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    a = arr[0]
    b = arr[1]
    if arr[1] < arr[0]  # ensure that a is greater than b
      a = arr[1]
      b = arr[0]
    end
    
    for i in 2...arr.length
      if arr[i] > b
        if arr[i] > a
          b = a
          a = arr[i]
        else
          b = arr[i]
        end
      end
    end
    
    return a + b
  end
  
end

def sum_to_n? arr, n
  for i in 0...arr.length
    a = arr[i]
    for j in i+1...arr.length
      if (a+arr[j]) == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s[0..0] =~ /[[:alpha:]]/
    char = s[0..0].downcase
    ascii = char.ord
    if ascii != 97 && ascii != 101 && ascii != 105 && ascii != 111 && ascii != 117
      return true
    end
  end
  return false  

end

# ?????????????
def binary_multiple_of_4? s
  if s.length == 0
    return false
  end
  
  sum = 0
  mult = 1
  chars = s.split("")
  for i in 0..chars.length-1
    if chars[chars.length-1-i] == "1"
      sum = sum + mult
    elsif chars[chars.length-1-i] != "0"
      return false
    else
      # do nothing
    end
    mult = mult * 2
  end
  if sum % 4 == 0
    return true
  end
  return false
end


# Part 3

class BookInStock
  # constructor
  def initialize(isbn, price)
    raise ArgumentError, 'invalid argument(s)' unless isbn != "" && price > 0
    
    @isbn  = isbn
    @price = price
  end
  
  # getters
  def isbn
    @isbn
  end
  def price
    @price
  end
  
  # setters
  def isbn=(newIsbn)
    @isbn = newIsbn
  end
  def price=(newPrice)
    @price=newPrice
  end
  
  def price_as_string
    sprintf("$%2.2f", @price)
  end
end
