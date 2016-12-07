module ChargesHelper
	def pretty_amount(amount_in_cents)
<<<<<<< Updated upstream
		binding.pry
=======
>>>>>>> Stashed changes
		number_to_currency(amount_in_cents * 100)
	end
end