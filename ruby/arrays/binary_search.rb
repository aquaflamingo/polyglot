# Problem :
# - Given a sorted array find an element in the array
#
# Assumptions:
# - Array is not empty
# - Elements are sorted in ascending order
# 
# Strategy: Binary Search
# - Create a pointer at index 0, and index array.size
# - If query is equal to index 0 value; return 
# - If query is equal to index array.size value; return 
# - Create tmp pointer to array.size / 2 (Split collection)
# - If query is equal to value at tmp pointer; return 
# - If query is greater than tmp pointer
#   - rerun query with start pointer as tmp pointer and end pointer as array.size 
# - Else 
#   - return query with start pointer as index 0 and end pointer as tmp pointer 
#
# - Complexity: O(log n)


input = [1,2,5,7,8,9,12,17,22]
query = 18

st = 0
en = input.size - 1


def binary_search(start_ptr, end_ptr, search_array, query)
  # Base case: not found
  if end_ptr == start_ptr 
    return -1
  end

  if search_array[start_ptr] == query 
    return start_ptr
  elsif search_array[end_ptr] == query 
    return end_ptr
  end

  tmp_ptr = (end_ptr/2).ceil

  pulled_element = search_array[tmp_ptr]

  if query == pulled_element
    return tmp_ptr
  elsif query > pulled_element
    # Search upper half
    return binary_search(tmp_ptr, end_ptr, search_array, query)
  else 
    # Search lower half
    return binary_search(start_ptr, tmp_ptr, search_array, query)
  end
end

puts "Done: #{binary_search(st, en, input, query)}"
