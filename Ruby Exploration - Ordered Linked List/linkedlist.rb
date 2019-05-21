class Node
	attr_accessor :value, :next
	def initialize(value1)
		@value = value1
		@next = nil
	end

	def to_string
    "Node with value: #{@value}"
  	end
end 

class LinkedList
	def initialize(value)
		@head = Node.new(value)
	end

	def find_tail
    node = @head

    return node if !node.next
    return node if !node.next while (node = node.next)
  	end

	def append(value)
	if value > find_tail.value
		find_tail.next = Node.new(value)
		return 
	end
	
	current = @head	
	if current.next == nil 
		if value < current.value
		newnode = Node.new(value)
		newnode.next= current
		@head = newnode
	
		end
	
	else 	
	while current.next != nil
		if value > current.value
			if value < current.next.value
				toinsert = Node.new(value)
				toinsert.next = current.next
				current.next = toinsert
				break
			end
		else
			if current = @head
				@head = Node.new(value)
				@head.setnext(current)
			end

		end
	end
	end
			
		
	end

	def delete(value)
		current = @head
		if current.value == value
			@head = current.next
		else
			while current.next != nil 
				if current.next.next == nil
					if current.next.value == value 
						
						current.next = nil
					
						break
					end
				end
				if value == current.next.value
					current.next = current.next.next
				end
				current = current.next
			end
		end 
	end

	def printelements()
	
		current = @head
		
	
		while current != nil
	
			print current.value
	
			current = current.next

		end
	end 
end

l = LinkedList.new(5)
l.append(2)
l.append(8)
l.append(4)
l.append(9)
l.append(12)
l.printelements()

l.delete(12)
l.printelements()
l.delete(2)
l.printelements()
l.delete(8)
l.printelements()

	
	

