
class Plato 
	attr_reader :nombre, :conjunto_alimentos, :conjunto_cantidades
	def initialize (nombre, conjunto_alimento, conjunto_cantidad)
		@nombre = nombre
		@conjunto_alimentos = conjunto_alimento
		@conjunto_cantidades = conjunto_cantidad
	end

	def por_prot
		i_alim = @conjunto_alimentos.head
		i_cant = @conjunto_cantidades.head
		prot_total = 0
		cant_total = 0

		while ( i_alim != nil )
			aux = (i_alim.value).proteinas * (i_cant.value/1000)
			prot_total += aux
			cant_total += i_cant.value
			i_alim = i_alim.next
			i_cant = i_cant.next
		end

		 @proteinas = (prot_total / cant_total)*100
		 return "#{@proteinas.round(2)}%"
	end

	def por_lipid
		i_alim = @conjunto_alimentos.head
		i_cant = @conjunto_cantidades.head
		lipid_total = 0
		cant_total = 0

		while ( i_alim != nil )
			aux = (i_alim.value).lipidos * (i_cant.value/1000)
			lipid_total += aux
			cant_total += i_cant.value
			i_alim = i_alim.next
			i_cant = i_cant.next
		end

		 @lipid = (lipid_total / cant_total)*100
		 return "#{@lipid.round(2)}%"
	end

end
