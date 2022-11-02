# Tag:
# - EASY 
#
# Problem :
# - Given two sorted lists create a new sorted list by splicing
#
# Assumption:
# - Lists are in ascending order 
# - List is doubly linked
#
# Strategy:
# - Compare the first from list one and two
# - Begin with the smallest one
# - ptr = l1.head
# - prev = l1.head
# - While ptr < l2.head 
#     prev = ptr
#     ptr = ptr.next
# - Ptr is now more than l2 head
# - Ptr2 = l2.next
# - Set prev.next = l2.head
# - Set l2.head.next = ptr 
# - Set ptr.next = Ptr2
# - Run the loop again
#
# Complexity: 
# - TODO

require_relative "../list_node.rb"

def create_linked_list(input)
  nodes = input.map do |v|
    ListNode.new(v, nil, nil)
  end

  0.upto(nodes.size) do |index|
    if index < nodes.size
       nodes[index].next = nodes[index+1]
    end
  end


  LinkedList.new(nodes.first)
end


l1 = create_linked_list([1,2,3,4,6])
l2 = create_linked_list([3,4,5,6,7])

def print_list(list)
  n = list.head
  while n.has_next?
    puts n.value
    n = n.next
  end
  puts n.value 
end

# Start with smaller 
start, other = l1.head > l2.head ? [l2.head, l1.head] : [l1.head, l2.head]

ptr = start
prev = start

while ptr.value < other.value && ptr.has_next?
    prev = ptr
    ptr = ptr.next
end

tmp_next_ptr = other.next
prev.next = tmp_next_ptr
other.next = ptr
ptr.next = tmp
