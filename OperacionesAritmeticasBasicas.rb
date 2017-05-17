num1 = 0.00
num2 = 0.00
sum = 0.00
difference = 0.00
product = 0.00
quotient = 0.00
modulus = 0.00
print "Ingresa el Valor de Num 1: "
num1 = gets.chomp
print "Ingresa el Valor de Num 2: "
num2 = gets.chomp
sum = (num1.to_f + num2.to_f)
puts "El resultado de la suma es: #{sum}"
difference = (num1.to_f - num2.to_f)
puts "El resultado de la resta es: #{difference}"
product = (num1.to_f * num2.to_f)
puts "El resultado de la Multiplicacion es: #{product}"
quotient = (num1.to_f / num2.to_f)
puts "El resultado de la Division es: #{quotient}"
modulus = (num1.to_f ** num2.to_f)
puts "El resultado de la Exponenciacion es: #{modulus}"