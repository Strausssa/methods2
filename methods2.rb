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

	def in_order?(a, b, c, bOk)
		if b > a || c > b
			return true
		else
			if bOk && b < a
				return true
			else
				return false
			end
		end
	end

	def less_by_ten?(a, b, c)
		if (a + 10) < b || (a + 10) < c || (b + 10) < c || (b + 10) < a || (c + 10) < b || (c + 10) < a
			return true
		else
			return false
		end
	end

	# TODO - write fizz_string
	def fizz_string(string)
		if string.start_with?("F") || string.start_with?("F")
			if string.end_with?("B") || string.end_with?("b")
				return "FizzBuzz"
			else
				return "Fizz"
			end
		elsif string.start_with?("B") || string.start_with?("b")
			return "Buzz"
		else
			return string			
		end
	end

	# TODO - write first_last_six?
	def first_last_six(garr)
		if garr[0] == 6 || garr[-1] == 6
			return true
		else
			return false
		end
	end

	# TODO - write rotate_left
	def rotate_left(gearr)
		a = gearr.shift
		gearr[2] = a
		return gearr
	end

	# TODO - write double23?
	def double23(rrarr)
		if rrarr.first == 2 && rrarr.last == 2 || rrarr.first == 3 || rrarr.last == 3
			return true
		else
			return false
		end		
	end
end