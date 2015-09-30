#Solution File
class Node
attr_accessor :dato, :ref
  def initialize(dato)
      @dato = dato
  end
end

class LinkedList
  
  def initialize (head)
      @head = head
      @tamano = head
  end

  def insert(node)
      @tamano.ref = node
      @tamano = @tamano.ref
  end

  def delete(dato)
    temp = @head
    prev = @head

    if temp.dato == dato
      @head = temp.ref
    else
      while (temp != nil && temp.dato != dato)
       prev = temp
       temp = temp.ref
      end
      if (temp != nil && temp.dato == dato)
        prev.ref = temp.ref
      else puts "Number not found!"
      end
    end
  end


  def print
      current_node = @head
      String out = ""
      while current_node != nil
          out.concat(current_node.dato)
          out.concat(",")
          current_node = current_node.ref
      end
      out = out[0...-1]
      puts out
  end

end

input1= gets.chomp
h = Node.new(input1)
list = LinkedList.new(h)

loop do 
	input= gets.chomp
	break if input == "-1" 
	list.insert(Node.new(input))	
end

list.print


#list.delete(gets.chomp)

#list.print
