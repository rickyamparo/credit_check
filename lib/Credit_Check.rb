require 'pry'
# The formula verifies a number against its included check digit, which is usually appended to a partial account number to generate the full account number.
  # Store each individual digit as an element in an array.

# from the rightmost digit, which is the check digit, moving left,
    # double the value of every second digit
# if product of this doubling operation is greater than 9,
    # then sum the digits of the products
# take the sum of all the digits
# if and only if the total modulo 10 is equal to 0 then the number is valid
def sum_create
  total = add_create.reduce(:+)
end

def validity
  if sum_create % 10 == 0
    puts "valid"
  else
    puts "invalid"
  end
end

def add_double_digits(number)
  holder_array = []
  summed_array = []
  if number.to_s.length > 1
    holder_array = number.to_s.split(//)
    summed_array << holder_array[0].to_i + holder_array[1].to_i
  else
    summed_array << number.to_i
  end
  summed_array
end


def add_create
  a = double_create.map do |num|
    add_double_digits(num)
  end
  a.flatten
end


def double_number(x)
  x.to_i * 2
end


def double_create
  card_number = "4929735477250543"
  credit_array = card_number.split(//)
  double_array = []
   credit_array.each_with_index do |num,i|
     if i.even? == true
      double_array << double_number(num)
     else
      double_array << num
     end
   end
   double_array
 end

validity
# valid = false

# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
