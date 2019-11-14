require 'p6/alimento'

RSpec.describe P6 do
 it "has a version number" do
   expect(P6::VERSION).not_to be nil
 end

 describe Alimento do
	before (:all) do
		@tofu = Alimento.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
		
	end
  end
end
