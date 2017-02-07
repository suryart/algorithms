require_relative 'node'
class LinkedList
  attr_reader :head
  def initialize(head)
    @head = head
  end

  # add a node to list
  def add_node(node)
    if head # if there's a head already then link it at the end
      temp = head
      while temp.next_node # find the tail node
        temp = temp.next_node
      end
      temp.next_node = node
    else # otherwise make it head
      head = node
    end
  end

  # delete a node from list
  def delete_node(node)
    if head
      if head == node # node that is to be deleted is head of list
        head = head.next_node
        return true
      else # node is somewhere in the list
        temp = self.head
        while temp && temp.next_node != node
          temp = temp.next_node
        end
        if temp
          temp.next_node = temp.next_node.next_node
          return true # node found and removed from list
        else
          return false # node not found!
        end
      end
    else
      return false # nothing to delete
    end
  end

  # find nth node
  def find_nth_node(n)
    return nil if n <= 0
    if n == 1
      return head
    else
      i = 1
      temp = head
      while i != n && !temp.nil?
        temp = temp.next_node
        i += 1
      end
      return temp
    end
  end

  # reverse the linked list
  def reverse_list
    next_node = nil
    current_node = head
    previous_node = nil
    while current_node
      next_node = current_node.next_node
      current_node.next_node = previous_node
      previous_node = current_node
      current_node = next_node
    end
    @head = previous_node
    self
  end
end