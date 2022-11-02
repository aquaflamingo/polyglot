# Tag:
# - EASY 
#
# Problem :
# - Given a string X, print a new string without any vowels
#
# Assumptions:
# - The new string does not need to be a word i.e. can be gibrish
# - Y is considered a vowel
# 
# Strategy:
# - Create an reference array of vowels
# - Create string builder
# - Iterate through input array and compare if the character is inside the array
#
# Complexity: 
# - Time: O(n), where n is the size of input array, given vowels are constrained
# - Space: O(n*(n-count_vowels(n)), where n is the size of input array


VOWELS = ['a','e','i','o','u','y']

def run_vowel_filter(input)
  # Filter if the character is encountered
  input.chars.filter do |c| 
    !VOWELS.include?(c)
  end.join('')
end

one = "Hello world"
puts run_vowel_filter(one)
two = "The quick brown fox jumps over the dog"
puts run_vowel_filter(two)
three = "Totally outstanding radically important innovation of technology that will revolutionize the revolution industry"
puts run_vowel_filter(three)





