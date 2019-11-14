class Alimento
	attr_reader :nombre , :proteinas , :carbohidratos

	def initialize(nom , prot , carbohid , lip , ge , ter)
		@nombre = nom
		@proteinas , @carbohidratos , @lipidos = prot , carbohid , prot
		@gei , @terreno = ge , ter
	end	
end
