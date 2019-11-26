Nodo = Struct.new(:value , :next , :prev)

class Lista

	include Enumerable

	attr_reader :head, :tail
	
	@@number_elements_list = 0
	def initialize(head, tail)
		@head = head
		@tail = tail
	end

	def each
		i = self.head
		while( i != nil) 
			yield i.value
			i = i.next
		end
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
			@tail[:next] = node
			@tail = node
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

	def erase_element_head 
		if(@head != nil && @tail != nil) then
			if (@head == @tail) then
				@head = nil
				@tail = nil
			else
				@head = @head[:next]
				@head[:prev] = nil
			end

			return @head[:value]
		end
	end

	def erase_element_tail
		if(@head != nil && @tail != nil) then
			if (@head == @tail) then
				@head = nil
				@tail = nil
			else
				@tail = @tail[:prev]
				@tail[:next] = nil
			end

			return @tail[:value]
		end
	end
	
	def expc_gei(n_dias)
		aux = @head
		suma = 0
		while aux != @tail[:next]
			suma += (aux[:value][0].gei * aux[:value][1])
			aux = aux[:next]
		end
		return (n_dias * suma).round(1)
	end

	def expc_m2t
		aux = @head
		suma = 0
		while aux != @tail[:next]
			suma += (aux[:value][0].terreno * aux[:value][1])
			aux = aux[:next]
		end
		return suma.round(1)
	end
end
