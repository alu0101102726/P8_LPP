require 'p6/alimento'

RSpec.describe P6 do
 it "has a version number" do
   expect(P6::VERSION).not_to be nil
 end

 describe Alimento do
	before (:all) do
		@carne_vaca = Alimento.new("Carne Vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
	end
  end
end
