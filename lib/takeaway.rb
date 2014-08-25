require_relative '../send_sms.rb'

class Takeaway

	attr_accessor :menu , :bill

	include Sms

	def initialize
		@menu = { 
			"Pizza Buffalina" => 15,
			"Mozzarella Sticks" => 5,
			"Pizza Patate" => 12,
			"Pizza Funghi" => 12,
			"Pizza Olive" => 12,
			"Tiramisu" => 5,
			"Cheese cake" => 5,
			"Limoncello" => 8,
			"Negroni" => 4,
			"Spritz" => 4,
		}
		@bill = 0
	end

	def order(dish, quantity)
		quantity.times { list << dish }
		sum = list.map {|dish| menu[dish] }
		@bill = sum.inject { | memo, price | memo + price }
	end

	def list
		@list ||= []
	end

	def checkout(customer_input)
		if customer_input != @bill
			raise RuntimeError, "You paid the wrong amount. Please try again."
		else
			confirm_order
		end
	end

	def confirm_order
		puts "Order confirmed! Thanks for your purchuse. You should receive an sms confirmation soon." 
		send_sms
	end



end
