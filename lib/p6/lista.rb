Nodo = Struct.new(:value , :next , :prev)

class Lista
	attr_reader :head, :tail

	@@number_elements_list = 0
	def initialize(head, tail)
		@head = head
		@tail = tail
	end

	def insert_element_head( valor )
		if(@head == nil && @tail == nil) then
			node = Nodo.new(valor,nil,nil)
			@head = node
			@tail = node
		else
			node = Nodo.new(valor,@head,nil)
			@head[:prev] = node
			@head = node
		end

		return [node[:value], node[:next] , node[:prev]]
	end

	def insert_element_tail( valor )
		if(@head == nil && @tail == nil) then
			node = Nodo.new(valor,nil,nil)
			@head = node
			@tail = node
		else
			node = Nodo.new(valor,nil,@tail)
			@tail = node
			@tail[:next] = node
		end

		return node[:value]
	end

	def insert_all_elements_head (array)
		@@number_elements_list = 0
		i = 0
		while (i < array.length) 
			insert_element_head(array[i])
			i += 1
			@@number_elements_list += 1
		end
		return @@number_elements_list
	end

	def insert_all_elements_tail (array)
		@@number_elements_list = 0
		i = 0
		while (i < array.length) 
			insert_element_tail(array[i])
			i += 1
			@@number_elements_list += 1
		end
		return @@number_elements_list
	end

end
