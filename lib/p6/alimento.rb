class Alimento
	attr_reader :nombre , :proteinas , :carbohidratos , :lipidos , :gei , :terreno

	def initialize(nom , prot , carbohid , lip , ge , ter)
		@nombre = nom
		@proteinas , @carbohidratos , @lipidos = prot , carbohid , lip
		@gei , @terreno = ge , ter
	end	
end
