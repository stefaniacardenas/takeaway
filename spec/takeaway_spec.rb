require "takeaway"

describe Takeaway do 
	let(:takeaway) {Takeaway.new}

	it "welcomes the customers" do 
		takeaway.print_welcome_message
	end
	
	it "is initialized with a menu" do
		takeaway.menu	
	end

	it "prints the menu" do 
		takeaway.print_menu
	end

	xit "has no orders when initialized" do 
		expect(takeaway.quantity).to eq
	end

	it "makes the sum of two Tiramisu" do
		expect(takeaway.order).to eq 10
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