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
end