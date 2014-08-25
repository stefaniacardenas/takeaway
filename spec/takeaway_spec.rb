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

end



# placing the order by giving the list of dishes, their quantities and a number
# If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
# The text sending functionality should be implemented using Twilio API. You'll need to register for it. It’s free.
# Use twilio-ruby gem to access the API
# Use a Gemfile to manage your gems
# Make sure that your Takeaway class is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
# However, if your Takeaway class is loaded into IRB and the order is placed, the text should actually be sent
# A free account on Twilio will only allow you to send texts to "verified" numbers. Use your mobile phone number, don't worry about the customer's mobile phone.