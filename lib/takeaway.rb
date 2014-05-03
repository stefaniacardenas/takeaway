class Takeaway

	MENU = { 
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

	def initialize
		MENU
	end

	def print_welcome_message
		puts "__"*30
		puts "Welcome to Little Italy. Please choose a dish from our menu"
		puts "__"*30	
	end

	def menu
		MENU
	end

	def print_menu
		menu.each {| dish, price | puts "#{dish} - £#{price}"}
	end

	def calculate_order
		@quantity = gets.chomp
			MENU.map do |food, price| 
			[food, price * @quantity]
		end
	end

	
end
