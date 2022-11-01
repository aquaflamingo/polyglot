# Given an array count the frequency of occurrence for each character
#
# Assumptions:
#   - Array is not empty
#   - Characters are case sensitive 
#   - ASCII and not unicode 
#
# Strategy:
#    - Create a map<Char, int> 
#    - Each character is a key entry to the frequency value
#    - Pull the value from the map

requested = 3
input = [3,3,4,5,1,3,3,5,6,7,8,8,2,1,2,4,7,8,9]

# Ruby hash represents a map
hash = {}

input.each do |val|
  # Increment the value currently present
  #
  # NOTE: Cannot do nil + 1
  if hash[val]
    hash[val] += 1
  else
    hash[val] = 1
  end
end

puts "The character #{requested} occurs #{hash[requested]} times"
