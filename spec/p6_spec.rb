require 'p6/alimento'

RSpec.describe P6 do
 it "has a version number" do
   expect(P6::VERSION).not_to be nil
 end

 describe Alimento do
	before (:all) do
		@tofu = Alimento.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
		@camarones = Alimento.new("Camarones", 17.6, 1.5, 0.6, 18.0, 2.0)
		@pollo = Alimento.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
		@queso = Alimento.new("Queso", 25.0 , 1.3 , 33.0 , 11.0 ,41.0)
		

	end

	context "Probando los getters" do
		it "El getter del nombre funciona bien" do
			expect(@tofu.nombre).to eq("Tofu")
		end

		it "Probando si los getters de proteinas, carbohidratos y lípidos" do
			expect(@tofu.proteinas).to eq(8.0)
			expect(@tofu.carbohidratos).to eq(1.9)
			expect(@tofu.lipidos).to eq(4.8)
		end

		it "Probando si los getters de GEI y terreno" do
			expect(@tofu.gei).to eq(2.0)
			expect(@tofu.terreno).to eq(2.2)
		end
	end

	context "Probando obtencion del alimento formateado y valor eergético" do
		it "El alimento formateado es correcto" do
			expect(@tofu.to_s).to eq("Tofu , 8.0 , 1.9 , 4.8 , 2.0 , 2.2" )
		end

		it "El valor energético es el correcto" do
			expect(@tofu.v_energ).to eq(82.8)
		end
	end

	context "Probando cálculo impacto ambiental" do
		it "Cálculo correcto impacto ambiental de un hombre" do
			arry_gei = [@tofu.gei ,  @camarones.gei ,  @pollo.gei ]
			arry_terreno = [@tofu.terreno , @camarones.terreno  , @pollo.terreno ]
			arry_cantidad = [8 , 10 , 12]
			expect(@tofu.imp_amb(arry_gei, arry_terreno , arry_cantidad)).to eq(387.2)
		end

		it "Cálculo correcto impacto ambiental de una mujer" do
			arry_gei = [@tofu.gei ,  @queso.gei ,  @pollo.gei ]
			arry_terreno = [@tofu.terreno , @queso.terreno  , @pollo.terreno ]
			arry_cantidad = [8 , 6 , 10]
			expect(@tofu.imp_amb(arry_gei, arry_terreno , arry_cantidad)).to eq(473.6)
		end

		
	end
 end

 describe Lista do
	before(:all) do
		@list = Lista.new(nil,nil)
	end

	context "Probando getters" do
		it "Getter de la cabeza funciona correctamente" do
			expect(@list.head).to eq(nil)
		end
	end
 end
end
