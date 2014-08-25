class Takeaway

	attr_accessor :menu , :bill

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

	def view_order
		@thing = @list.each do |dish_name , n |
			"#{dish_name} £#{@bill}"
		end.join("\n")	
	end

end
