#Return Explicito
def add(number1,number2)
	result = number1 + number2
	return result
end
#Return Implicito
def substract(number1,number2)
	number1 - number2
end
#Return Implicito
def multiply(number1,number2)
	number1 * number2
end
#Return Implicito
def divide(number1,number2)
	number1.to_f / number2.to_f
end
p add(10,2)==12
p substract(10,2)==8
p multiply(10,2)==20
p divide(10,4)==2.5