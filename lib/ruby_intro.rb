# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  return 0 if !arr.any?
  return arr[0] if arr.length==1
  num1=-(2**(0.size * 8 -2))
  num2=-(2**(0.size * 8 -2))
  arr.each do |n| 
    if n>num1 
     num2=num1
     num1=n
    elsif n>num2
      num2=n 
    end
  end
  num1+num2
end

def sum_to_n? arr, n
  return false if !arr.any? || arr.length==1
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
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
