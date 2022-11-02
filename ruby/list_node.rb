# Doubly linked list 
class ListNode
  attr_accessor :value, :next, :prev

  def initialize(v, n, p)
    @value = v
    @next = n
    @prev = p
  end

  def has_next?
    !@next.nil?
  end
end

class LinkedList 
  attr_accessor :head 

  def initialize(head)
    @head = head
  end

end
