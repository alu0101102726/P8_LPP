class Alimento
	attr_reader :nombre , :proteinas , :carbohidratos , :lipidos , :gei , :terreno

	def initialize(nom , prot , carbohid , lip , ge , ter)
		@nombre = nom
		@proteinas , @carbohidratos , @lipidos = prot , carbohid , lip
		@gei , @terreno = ge , ter
	end	

	def to_s
		"#{@nombre} , #{@proteinas} , #{@carbohidratos} , #{@lipidos} , #{@gei} , #{@terreno}"
	end

	def v_energ
                return ((@proteinas * 4) + (@carbohidratos * 4) + (@lipidos * 9))
        end
end
