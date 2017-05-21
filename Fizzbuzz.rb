def fizzbuzz(min,max)
	num = min
	array = Array.new((max-min)+1)
	idx=0
	while num <= max
		if ((num % 5) == 0) and ((num % 3) == 0)
			array[idx] = "FizzBuzz"
		elsif ((num % 5) == 0)
			array[idx] = "Buzz"
		elsif ((num % 3) == 0)
			array[idx] = "Fizz"
		else
			array[idx] = num
		end
		num += 1
		idx += 1
	end
	return array
end
p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]