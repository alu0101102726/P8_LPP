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
		@lentejas = Alimento.new("Lentejas", 23.5 , 52.0 , 1.4 , 0.4 , 3.4)
		@chocolate = Alimento.new("Choccolate", 5.3 , 47.0 , 30.0 , 2.3 , 3.4)

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

	context "Probando módulos añadidos" do
		it "Probando <=> (Comparable), funciona correctamente" do
			expect(@tofu < @lentejas).to eq(true)
			expect(@tofu >= @queso).to eq(false)
			expect(@tofu == @tofu).to eq(true)
			expect(@pollo.between?(@tofu,@lentejas)).to eq(true)
			expect(@lentejas.clamp(@camarones,@tofu)).to eq(@tofu)
		end
	end
 end

 describe Lista do
	before(:all) do
		@tofu = Alimento.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
		@queso = Alimento.new("Queso", 25.0 , 1.3 , 33.0 , 11.0 ,41.0)
		@lentejas = Alimento.new("Lentejas", 23.5 , 52.0 , 1.4 , 0.4 , 3.4)
		@chocolate = Alimento.new("Chocolate", 5.3 , 47.0 , 30.0 , 2.3 , 3.4)
		@leche = Alimento.new("Leche" , 3.3 , 4.8 , 3.2 , 3.2 , 8.9)
		@pollo = Alimento.new("Pollo", 20.6, 0.0, 5.6, 5.7, 7.1)
		@huevo = Alimento.new("Huevos" , 13.0 , 1.1 , 11.0 , 4.2 , 5.7)
		@nuez = Alimento.new("Nuez" , 20.0 , 21.0 , 54.0 , 0.3 , 7.9)
		@carne_vaca = Alimento.new("Carne de vaca" , 21.1 , 0.0 , 3.1 , 50.0 , 164.0)
		@carne_cordero = Alimento.new("Carne de cordero" , 18.0 , 0.0 , 17.0 , 20.0 , 185.0)
		@cerveza = Alimento.new("Cerveza" , 0.5 , 3.6 , 0.0 , 0.24 , 0.22)

		@list = Lista.new(nil,nil)
		@list2 = Lista.new(nil,nil)

		@espanola = Lista.new(nil,nil)
		@vasca = Lista.new(nil,nil)
		@vegetaria = Lista.new(nil,nil)
		@vegetaliana = Lista.new(nil,nil)
		@solocarne = Lista.new(nil,nil)
	end

	context "Probando getters" do
		it "Getter de la cabeza funciona correctamente" do
			expect(@list.head).to eq(nil)
		end

		it "Getter de la cola funciona correctamente" do
			expect(@list.tail).to eq(nil)
		end

	end

	context "Probando inserción" do
		it "Insertar un elemento por la cabeza en la lista correcto" do
			expect(@list.insert_element_head(5)).to eq([5,nil,nil])
		end

		it "Insertar un elemento por la cola en la lista correcto" do
			expect(@list.insert_element_tail(7)).to eq(7)
		end

		it "Insertar varios elementos por la cabeza correcto" do
			expect(@list2.insert_all_elements_head([5,6,7])).to eq(3)
		end

		it "Insertar varios elementos por la cola correcto" do
			expect(@list2.insert_all_elements_tail([5,6])).to eq(2)
		end

	end

	context "Probando extracción" do
		it "Eliminar un elemento por la cabeza" do
			expect(@list2.erase_element_head).to eq(6)
		end

		it "Eliminar un elemento por la cola" do
			expect(@list2.erase_element_tail).to eq(5)
		end
	end

	context "Probando las dietas" do
		it "Dieta española y vasca creada correctamente" do
			expect(@espanola.insert_all_elements_head([[@lentejas,7],[@chocolate,4.05],[@queso,6.3]])).to eq(3)
			expect(@vasca.insert_all_elements_head([[@nuez,13],[@cerveza,35]])).to eq(2)
		end

		it "Dieta vegetaria y vegetaliana creada correctamente" do
			expect(@vegetaria.insert_all_elements_head([[@leche,10],[@huevo, 9],[@tofu, 6]])).to eq(3)
			expect(@vegetaliana.insert_all_elements_tail([[@lentejas,6],[@tofu,9],[@nuez,7]])).to eq(3)
		end

		it "Dieta solo carne creada correctamente" do
			expect(@solocarne.insert_all_elements_head([[@carne_cordero,5],[@carne_vaca,4],[@pollo,5]])).to eq(3)
		end
	end

	context "Expectativas para las dietas" do
		it "Expectativas para estimar las emisiones diarias de GEI" do
			expect(@espanola.expc_gei(1)).to eq(81.4)
			expect(@vasca.expc_gei(1)).to eq(12.3)
			expect(@vegetaria.expc_gei(1)).to eq(81.8)
			expect(@vegetaliana.expc_gei(1)).to eq(22.5)
			expect(@solocarne.expc_gei(1)).to eq(328.5)
		end
		
		it "Expectativas para estimar las emisiones anuales de GEI" do
			expect(@espanola.expc_gei(365)).to eq(29716.5)
			expect(@vasca.expc_gei(365)).to eq(4489.5)
			expect(@vegetaria.expc_gei(365)).to eq(29857.0)
			expect(@vegetaliana.expc_gei(365)).to eq(8212.5)
			expect(@solocarne.expc_gei(365)).to eq(119902.5)
		end

		it "Expectativas para estimar las emisiones diarias de metros cuadrados de uso de terreno" do
			expect(@espanola.expc_m2t).to eq(295.9)
			expect(@vasca.expc_m2t).to eq(110.4)
			expect(@vegetaria.expc_m2t).to eq(153.5)
			expect(@vegetaliana.expc_m2t).to eq(95.5)
			expect(@solocarne.expc_m2t).to eq(1616.5)
		end

	end

	context "Prueba modulos añadidos" do
		it "Probando collect(Enumerable), funciona correctamente" do
			expect(@vasca.collect{|x| x[0].lipidos >80}).to eq([false,false])
		end

		it "Probando select(Enumerable), funciona correctamente" do
			expect(@vasca.select{|x| x[0].lipidos >80}).to eq([])
		end

		it "Probando max(Enumerable), funciona correctamente" do
			expect(@vasca.max).to eq([@nuez,13])
		end

		it "Probando min(Enumerable), funciona correctamente" do
			expect(@vasca.min).to eq([@cerveza,35])
		end

		it "Probando sort(Enumerable), funciona correctamente" do
			expect(@vasca.sort{|a,b| a.length <=> b.length}).to eq([[@cerveza , 35],[@nuez,13]])
		end

	end
 end

 describe Plato do
	before(:all) do
		@conjunto_alim = Lista.new(nil,nil)
		@conjunto_cant = Lista.new(nil,nil)
		@tofu = Alimento.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
		@queso = Alimento.new("Queso", 25.0 , 1.3 , 33.0 , 11.0 ,41.0)
		@lentejas = Alimento.new("Lentejas", 23.5 , 52.0 , 1.4 , 0.4 , 3.4)
		@chocolate = Alimento.new("Chocolate", 5.3 , 47.0 , 30.0 , 2.3 , 3.4)
		
		@conjunto_alim.insert_all_elements_head([@queso, @lentejas, @chocolate])
		@conjunto_cant.insert_all_elements_head([14.0,2.5,8.0])
		@plato = Plato.new("Plato", @conjunto_alim , @conjunto_cant)
	end

	it "Obteniendo el nombre de un plato" do
		expect(@plato).to respond_to(:nombre)
	end

	it "Existe un conjunto de alimentos" do
		expect(@plato).to respond_to(:conjunto_alimentos)
	end

	it "Existe un conjunto de cantidades de alimentos en gramos" do
		expect(@plato).to respond_to(:conjunto_cantidades)
	end

	context "Comprobando los porcentajes" do
		it "Porcentaje de poteínas del conjunto de alimentos correcto" do
			expect(@plato.por_prot).to eq("1.84%")
		end

		it "Porcentaje de lípidos del conjunto de alimentos correcto" do
			expect(@plato.por_lipid).to eq("1.8%")
		end
	end
 end

end
