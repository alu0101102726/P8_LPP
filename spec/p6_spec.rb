require 'p6/alimento'

RSpec.describe P6 do
 it "has a version number" do
   expect(P6::VERSION).not_to be nil
 end

 describe Alimento do
	before (:all) do
		@tofu = Alimento.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
		
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
  end
end
