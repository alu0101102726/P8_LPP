
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

	def por_h_carb
		i_alim = @conjunto_alimentos.head
		i_cant = @conjunto_cantidades.head
		h_carb_total = 0
		cant_total = 0

		while ( i_alim != nil )
			aux = (i_alim.value).carbohidratos * (i_cant.value/1000)
			h_carb_total += aux
			cant_total += i_cant.value
			i_alim = i_alim.next
			i_cant = i_cant.next
		end

		 @h_carb = (h_carb_total / cant_total)*100
		 return "#{@h_carb.round(2)}%"
	end
	
	def vct
		i_val = @conjunto_alimentos.head
		i_cantidad = @conjunto_cantidades.head
		vct_total = 0

		while ( i_val != nil)
			vct_total += (i_val.value).v_energ * i_cantidad.value
			i_val = i_val.next
		end

		return vct_total
	end
end
