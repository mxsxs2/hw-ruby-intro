# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  return 0 if !arr.any?
  return arr[0] if arr.length==1
  arr.sort!
  arr[-1]+arr[-2]
end

def sum_to_n? arr, n
  #return false if !arr.any? || arr.length==1
  arr.each{|n1| arr.each {|n2| return true if n1!=n2 && n1+n2==n}}
  return false
end

# Part 2

def hello(name)
  return "Hello, "<<name
end

def starts_with_consonant? s
  return !s.nil? && !s.empty? && !{"A"=>nil, "E"=>nil, "I"=>nil, "O"=>nil, "U"=>nil}.key?(s.chars[0].upcase) && s.chars[0]=~ /[A-Za-z]/
end

def binary_multiple_of_4? s
  !(/^[10]*00$/.match(s).nil?) || s=="0"
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn,price)
    raise ArgumentError if isbn.empty? || price<=0
    @isbn=isbn
    @price=price
  end

  public
  def price_as_string
    return "$#{'%.2f' % @price}"
  end
end
