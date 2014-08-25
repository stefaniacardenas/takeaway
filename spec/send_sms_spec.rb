require "send_sms.rb"

describe Sms do
	
	class Order_confirmation
		include Sms
	end

	let(:order_confirmation) { Order_confirmation.new }
	let(:sms) { Sms.new }

	it "knows the time of delievery is in one hour from order confirmation" do
		expect(order_confirmation.time).to eq("#{(Time.now + 1*60*60).strftime('%H:%M')}")
	end

end