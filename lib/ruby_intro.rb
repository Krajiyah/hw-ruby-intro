# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0){|sum,x| sum + x }
end

def max_2_sum arr
  sum(arr.max(2))
end

def sum_to_n? arr, n
  arr.each_with_index.inject(false){|bool, (a, i)| bool || arr.each_with_index.inject(false) {|bool, (b, j)| bool || i != j && a + b == n }}
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s.length > 0 && s[0] =~ /[[:alpha:]]/ && !["A", "E", "I", "O", "U"].inject(false){|bool, vowel| bool || s[0].downcase == vowel.downcase}
end

def binary_multiple_of_4? s
  s.length > 0 && s.each_char.inject(true){|bool, letter| bool && (letter == "0" || letter == "1")} && s.each_char.with_index.inject(0){|num, (bin_digit, i) | num + (2**(s.length - i) * bin_digit.to_i)} % 4 == 0
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if price <= 0 || isbn.length == 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$" + ('%.2f' % @price).to_s
  end

  attr_accessor :isbn
  attr_accessor :price
end
