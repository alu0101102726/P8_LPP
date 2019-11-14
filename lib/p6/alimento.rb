class Alimento
	attr_reader :nombre

	def initialize(nom , prot , carbohid , lip , ge , ter)
		@nombre = nom
		@proteinas , @carbohidratos , @lipidos = prot , carbohid , prot
		@gei , @terreno = ge , ter
	end	
end
