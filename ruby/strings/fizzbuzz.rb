# 
# Tag:
# - EASY 
#
# Problem :
# - Write a program that prints the numbers from 1 to 100. 
# - For multiples of three print “Fizz” 
# - For the multiples of five print “Buzz”.
# - For numbers which are multiples of both three and five print “FizzBuzz”.
# 
# Assumptions:
# - None
# 
# Strategy:
# - Multiple of 3 is computed via modulo 3 equals 0
# - Multiple of 5 is computed via modulo 5 equals 0
# - Multiple of 3 and 5 is computed via modulo 3 and 5 equals 0
#
# Complexity: 
# - Time: O(n), where n is the number of numbers input

FIZZBUZZ = "FizzBuzz"
FIZZ = "Fizz"
BUZZ = "Buzz"

def run_fizzbuzz(input)
  # for each number
  input.each do |num|
    # multiple of both three and five
    if num % 3 == 0 && num % 5 == 0
      puts FIZZBUZZ
    # multiple of three
    elsif num % 3 == 0
      puts FIZZ
    # multiple of five
    elsif num % 5 == 0
      puts BUZZ
    else
      puts num
    end
  end
end


i = 1...100

run_fizzbuzz(i)

