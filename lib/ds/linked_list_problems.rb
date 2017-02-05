require 'pp'
require_relative 'linked_list'
require_relative 'node'

node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4)

list = LinkedList.new(node1)

# Add a node
list.add_node(node2)
pp list

# Delete a node
list.delete_node(node2)

pp list