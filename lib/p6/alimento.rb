class Alimento
	include Comparable
	attr_reader :nombre , :proteinas , :carbohidratos , :lipidos , :gei , :terreno

	def initialize(nom , prot , carbohid , lip , ge , ter)
		@nombre = nom
		@proteinas , @carbohidratos , @lipidos = prot , carbohid , lip
		@gei , @terreno = ge , ter
	end	

	def to_s
		"#{@nombre} , #{@proteinas} , #{@carbohidratos} , #{@lipidos} , #{@gei} , #{@terreno}"
	end

	def <=> (otro_alimento)
		v_energ <=> otro_alimento.v_energ
	end

	def v_energ
                return ((@proteinas * 4) + (@carbohidratos * 4) + (@lipidos * 9))
        end

	def imp_amb ( arry_gei , arry_terreno , cantidad)
		suma = 0
		suma = suma +(arry_gei[0] + arry_terreno[0])*cantidad[0]
		suma = suma +(arry_gei[1] + arry_terreno[1])*cantidad[1]
		suma = suma +(arry_gei[2] + arry_terreno[2])*cantidad[2]
		suma.round(1)
	end
end
