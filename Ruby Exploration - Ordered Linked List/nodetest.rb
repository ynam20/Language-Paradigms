
    
   	require "./linkedlist.rb"

	l = LinkedList.new(5)
	l.append(3)
	l.append(2)
	l.append(8)
	l.append(10)
	l.send :printelements
	

	random = LinkedList.new(10)
	random.createlist(20)
	random.send :printelements

	

    
    
