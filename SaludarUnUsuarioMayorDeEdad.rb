print "Ingresa un nombre: "
name = gets.chomp
print "Ingresa una edad: "
age = gets.chomp.to_i
if name == "Gerardo" && age >= 18
	puts "Welcome"
elsif name != "Gerardo" && age < 18
	puts "No eres Gerardo y no eres mayor de edad"
elsif name == "Gerardo" && age < 18
    puts "No eres Mayor de Edad"
elsif name != "Gerardo" && age >= 18
    puts "No eres Gerardo pero eres Mayor de Edad"
end