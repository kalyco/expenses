class Expense
	def initialize
		@rent = 360
		@car = 375
		@launch = 568
		@parking = 140
		@gym = 30
		@meds = 60
	end

	def variable_costs(food, gas, phone, credit_cards)
		v_c = food + gas + phone + credit_cards
	end

	def constant_costs
		c_c = @rent + @car + @launch + @parking + @gym + @meds
	end
end

report = Expense.new
puts "food:"
food = gets.chomp.to_i
puts "gas:"
gas = gets.chomp.to_i
puts "phone:"
phone = gets.chomp.to_i
puts "credit_cards:"
credit_cards = gets.chomp.to_i

total = report.variable_costs(food, gas, phone, credit_cards) + report.constant_costs
puts "total for the month is #${total}"