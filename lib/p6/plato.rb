
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
			vct_total += (i_val.value).v_energ * (i_cantidad.value/1000)
			i_val = i_val.next
		end

		return vct_total.round(2)
	end

	def to_s
		cadena = "#{@nombre} "
		aux_alim = @conjunto_alimentos.head
		aux_cantidad = @conjunto_cantidades.head

		while (aux_alim != nil)
			cadena += "#{aux_alim.value.nombre} -> #{aux_cantidad.value} "
			aux_alim = aux_alim.next
			aux_cantidad = aux_cantidad.next
		end
		return cadena

	end
end

class Plato_heredada < Plato
	def initialize (nombre, conj_alimen , conj_canti)
		super(nombre, conj_alimen , conj_canti)
	end

	def t_gei
		aux = @conjunto_alimentos.head
		aux_t = @conjunto_cantidades.head
		t_gei = 0

		while ( aux != nil)
			t_gei += aux.value.gei * (aux_t.value/1000)
			aux = aux.next
			aux_t = aux_t.next
		end
		return t_gei.round(2)
	end
end
