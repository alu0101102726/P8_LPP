
class Plato 
	attr_reader :nombre, :conjunto_alimentos, :conjunto_cantidades
	def initialize (nombre, conjunto_alimento, conjunto_cantidad)
		@nombre = nombre
		@conjunto_alimentos = conjunto_alimento
		@conjunto_cantidades = conjunto_cantidad
	end
end
