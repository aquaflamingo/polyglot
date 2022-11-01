# Problem :
# - Given an array containing zero values 
# - Remove all zero values in place and keep the sorted order of elements
#
# Assumptions:
# - Array is not empty
# - Elements are sorted in ascending order
# 
# Strategy:
# - Read through the array and identify all zero indices 
# - Add zero indices two array
# - For each item in zero indices array 
#   - Start at Index
#   - Swap left item (i - 1) until left is at index value -1 or is a 0
#
# - Complexity: O(m*n), where m is the zero index array and n is the array size 
#   or m^2 if size is the same, but m would be 1/2 of n in this case

# input = [1,2,3,0,0,4,6,0,8,8,0,10,13,0,15,0,0,18]
input = [0,1,2,3,0,4,6,7,0,9,0]
zero_indices = []

input.each_with_index do |element, index|
  zero_indices << index if element.zero?
end

zero_indices.each do |index|
  zero_position = index
  swap_position = index - 1

  # If the first zero begins the array skip
  next if swap_position == -1

  # Grab the element to be swapped
  swap_element = input[swap_position]

  # If you have not hit the zero barrier 
  # and you have not hit the out of index range
  # keep swapping backwards
  while swap_element != 0 && swap_position > -1 
    swap_element = input[swap_position]

    input[swap_position] = 0
    input[zero_position] = swap_element

    # Go backwards
    swap_position -= 1
    zero_position -= 1

  end
end

puts "Done: #{input}"
