# = Clase alimento donde se define cada alimento y sus propiedades
# Autor:: Carlos Díaz Calzadilla
class Alimento
	include Comparable

	# == Atributos de los alimentos
	# Nombre del alimento, proteinas , corbohidratos , lipidos , gases de efecto invernadero y terreno
	attr_reader :nombre , :proteinas , :carbohidratos , :lipidos , :gei , :terreno
	
	# === Inicializar (initialize)
	#  Inicializa el alimento con los argumentos necesarios
	def initialize(nom , prot , carbohid , lip , ge , ter)
		@nombre = nom
		@proteinas , @carbohidratos , @lipidos = prot , carbohid , lip
		@gei , @terreno = ge , ter
	end

	# === Formateo (to_s)
	# Formatea el alimento
	def to_s
		"#{@nombre} , #{@proteinas} , #{@carbohidratos} , #{@lipidos} , #{@gei} , #{@terreno}"
	end

	# === Comparable
	# Permite hacer comparaciones <=,>=,==,between,clamp
	def <=> (otro_alimento)
		v_energ <=> otro_alimento.v_energ
	end

	# === Valor energético (v_energ)
	# Devuelve el valor energético del alimento
	def v_energ
                return ((@proteinas * 4) + (@carbohidratos * 4) + (@lipidos * 9))
        end

	# === Impacto ambiental (imp_amb)
	# Se obtiene el impacto
	def imp_amb ( arry_gei , arry_terreno , cantidad)
		suma = 0
		suma = suma +(arry_gei[0] + arry_terreno[0])*cantidad[0]
		suma = suma +(arry_gei[1] + arry_terreno[1])*cantidad[1]
		suma = suma +(arry_gei[2] + arry_terreno[2])*cantidad[2]
		suma.round(1)
	end
end
