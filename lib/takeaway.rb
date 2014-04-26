class Takeaway

	def initialize
		@menu = { 
				"Pizza Buffalina" => [15 ,],
				"Mozzarella Sticks" => [5,],
				"Pizza Patate" => [12,],
				"Pizza Funghi" => [12,],
				"Pizza Olive" => [12,],
				"Tiramisu" => [5,],
				"Cheese cake" => [5,],
				"Limoncello" => [8,],
				"Negroni" => [4,],
				"Spritz" => [4,],
		}
		
		@quantity = {}
	end

	def print_welcome_message
		puts "__"*30
		puts "Welcome to Little Italy. Please choose a dish from our menu"
		puts "__"*30	
	end

	def menu
		@menu
	end

	def print_menu
		@menu.each {| dish, price | puts "#{dish} - £#{price}"}
	end

	def quantity
		@quantity
	end



	


			# def enter_dish
			# puts "Enter dish:"
			# dish = gets.chomp
			# end

			# def enter_quantity
			# 	puts "Quantity needed?"
			# 	quantity = gets.chomp
			# end

	
end

# c.order({"Tiramisu" => 2},7)
# c.place_order

# menu1 = menu
# puts menu1.inspect