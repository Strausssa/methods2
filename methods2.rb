module Methods2
	
	# TODO - write elevenish?
	def elevenish (num)
		divided = num % 11
		if divided == 1
			return true
		elsif divided ==0
			return true
		else
			return false
		end
	end

	# TODO - write ice_cream_party?

	def ice_cream_party (icecream,candy)
		if icecream == 5 && candy == 5
			return 0
		elsif icecream <= 5 || candy <=5
			return 1
		else icecream > 5 || candy >=5
			return 2
		end
	end


	# TODO - write successful_squirrel_party?
	def successful_squirrel_party?(num, weekend)
		if weekend == true
			if num >= 40
				true
			else
				false
			end
		else
			if num >= 40 && num <= 60
				true
			else
				false
			end
		end
	end


	# TODO - write ticket
	def ticket(a, b, c)
		ab = a + b
		bc = b + c
		ac = a + c

		if ab == 10 || bc == 10 || ac == 10
			return 10
		elsif (ab - 10) == bc || (ab - 10) == ac
			return 5
		else
			return 0
		end
	end

	# TODO - write in_order?

	# TODO - write less_by_ten?
	
	# TODO - write fizz_string

	# TODO - write first_last_six?

	# TODO - write rotate_left

	# TODO - write double23?

end