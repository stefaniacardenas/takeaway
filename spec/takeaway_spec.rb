require "takeaway"

describe Takeaway do 
	let(:takeaway) {Takeaway.new}
	
	context 'Menu' do

		it "is initialized with a menu with 10 dishes" do
			expect(takeaway.menu.count).to eq 10
		end

		it "knows there is a dish called 'Tiramisu'" do 
			expect(takeaway.menu.has_key?('Tiramisu')).to be_truthy
		end

	end

	context 'Order' do 
		it "can add dishes and quantities to a list" do
			takeaway.order('Tiramisu', 2)
			expect(takeaway.list).to eq ['Tiramisu','Tiramisu']
		end

		it "can calculate the total payment due" do 
			takeaway.order('Tiramisu', 2)
			takeaway.order('Pizza Buffalina', 2)
			expect(takeaway.bill).to eq 40
		end
	end

	context 'Checkout' do
		it "checks the total paid by the customer is the same as the bill" do 
			takeaway.order('Tiramisu', 2)
			takeaway.order('Pizza Buffalina', 2)
			expect {takeaway.checkout(15)}.to raise_error RuntimeError, "You paid the wrong amount. Please try again."
		end
	end

end



# If the sum is not correct the method should raise an error, 
# otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
# Make sure that your Takeaway class is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
# However, if your Takeaway class is loaded into IRB and the order is placed, the text should actually be sent
