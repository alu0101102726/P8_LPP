Nodo = Struct.new(:value , :head , :tail)

class Lista
	attr_reader :head
	def initialize(head, tail)
		@head = head
		@tail = tail
	end
end
