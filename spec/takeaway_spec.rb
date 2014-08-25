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

		it "sends a confirmation via sms" do
			takeaway.order('Tiramisu', 2)
			takeaway.order('Pizza Buffalina', 2)
			takeaway.checkout(40)
			allow(takeaway).to receive (:send_sms)
			# takeaway.stub(:send_sms).and_return "Order confirmed! Thanks for your purchuse. You should receive an sms confirmation soon."
			# expect(takeaway.confirm_order).to eq "Order confirmed! Thanks for your purchuse. You should receive an sms confirmation soon."
		end
	end		

end