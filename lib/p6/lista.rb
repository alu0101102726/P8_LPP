# = Nodo que contendrá cada alimento
# Autor:: Carlos Díaz Calzadilla
Nodo = Struct.new(:value , :next , :prev)

# = Lista que va a contener un conjutno de alimentos
class Lista

	include Enumerable

	# == Atributos de la Lista
	# Cabeza y cola
	attr_reader :head, :tail
	
	@@number_elements_list = 0

	# === Inicializar (initialize)
	# Inicializa la lista con la cabeza y cola
	def initialize(head, tail)
		@head = head
		@tail = tail
	end
	
	# === Formateo (to_s)
	# Formateo de la lista
	def to_s
		aux = @head
		cadena = ""

		while (aux != nil)
			cadena += "#{aux.value.nombre} "
			aux = aux.next
		end
		return cadena
	end

	# === Recorrido de la lista (each)
	# Recorrer la lista
	def each
		i = self.head
		while( i != nil) 
			yield i.value
			i = i.next
		end
	end

	# === Insertar un elemento cabeza (insert_element_head)
	# Permite insertar un valor al comienzo de la lista
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

	# === Insertar un elemento cola (insert_element_tail)
	# Permite insertar un valor al final de la lista
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

	# === Insertar varios elementos cabeza (insert_all_elements_head)
	# Permite insertar varios valores al inicio de la lista
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

	# === Insertar varios elementos cola (insert_all_element_tail)
	# Permite insertar varios elementos al final de la lista

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

	# === Eliminar un elemento cabeza (erase_element_head)
	# Permite eliminar un valor al principio de la lista
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

	# === Eliminar un elemento cola (erase_element_tail)
	# Permite eliminar un valor al final de la lista
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
	
	# === Expectativa gei (excp_gei)
	# Permite obtener la expectativa de gei segú el número
	# de dias
	def expc_gei(n_dias)
		aux = @head
		suma = 0
		while aux != @tail[:next]
			suma += (aux[:value][0].gei * aux[:value][1])
			aux = aux[:next]
		end
		return (n_dias * suma).round(1)
	end

	# === Expectativa terreno (excp_m2t)
	# Permite obtener la expectativa de terreno
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
