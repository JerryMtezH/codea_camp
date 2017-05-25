# ¿Qué tipo de datos son cada una de las siguientes variables?
# ¿De que clase es cada uno y como lo puedes comprobar?
v = 9.0
w = ["1", "f", 4]
x = 1.4
y = "3"
z = {name: "Javier", email: "mail@codea.mx", fase: 1}
# Respuesta:
puts "-------------------------------------------------------"
puts "Pruebas Pregunta 1 (Tipos de Variables):"
p v.is_a? Float
p w.is_a? Array
p x.is_a? Float
p y.is_a? String
p z.is_a? Hash
# -----------------------------------------------------------------------------------------------------------------------------------------
# Obtén el valor del cuarto elemento de la lista `fruits` utilizando código. Y cambia el segundo valor de la lista por una fruta diferente.
fruits = ["apple", "orange", "peach", "pineapple", "kiwi"]
# Respuesta:
puts "-------------------------------------------------------"
puts "Pruebas Pregunta 2 (Arreglos):"
p fruits[3] == "pineapple"
fruits[1]="strawberry"
p fruits == ["apple", "strawberry", "peach", "pineapple", "kiwi"]
puts "-------------------------------------------------------"
puts "Pruebas Pregunta 3 (Arreglos):"
# -----------------------------------------------------------------------------------------------------------------------------------------
# Obtén el último elemento de la lista `sports`.
sports = ["rugby", "tennis", "soccer", "cycling", "baseball"]
# Respuesta:
p sports[sports.count-1] == "baseball"
# -----------------------------------------------------------------------------------------------------------------------------------------
# Añade un elemento más al principio de la lista `gadgets`.
gadgets = ["smartphone", "laptop", "tablet"]
# Respuesta:
gadgets = ["desktop"] + gadgets[0..gadgets.count-1]
puts "-------------------------------------------------------"
puts "Pruebas Pregunta 4 (Arreglos):"
p gadgets == ["desktop", "smartphone", "laptop", "tablet"]
# -----------------------------------------------------------------------------------------------------------------------------------------
# Hashes
# Crea la variable my_hash e inicialízala a un Hash vacío.
my_hash = {}
puts "-------------------------------------------------------"
puts "Pruebas Pregunta 5 (Hashes):"
p my_hash == {}
# Crea la variable grades e inicialízala a un Hash con 3 nombres de materias con una calificación correspondiente.
grades = { "spanish" => 7.5, "english" => 9, "scince" => 7.2}
puts "-------------------------------------------------------"
puts "Pruebas Pregunta 6 (Hashes):"
p grades == {"spanish"=>7.5, "english"=>9, "scince"=>7.2}
# Lee el value de la materia con la calificación más alta de grades y asígnalo a la variable highest_grade.
value = 0
highest_value = 0
highest_grade = "" 
grades.each do |key, value|
  if value > highest_value || highest_value == 0
  	highest_value = value
  	highest_grade = key
  end
end
puts "-------------------------------------------------------"
puts "Pruebas Pregunta 7 (Hashes):"
p highest_grade == "english"
# -----------------------------------------------------------------------------------------------------------------------------------------
# if/else
def large_word(string)
	if string.strip.length > 6
		"Large"
	else
		"Small"
	end
end
puts "-------------------------------------------------------"
puts "Pruebas Pregunta 8 (if/else):"
p large_word("Cuba") == "Small"
p large_word("Mexico") == "Small"
p large_word("Singapur") == "Large"
p large_word("Luxemburgo") == "Large"
# -----------------------------------------------------------------------------------------------------------------------------------------
# Loop
def print_plus_ten(numeros)
	for i in numeros
  		p (i + 10)
	end
end
puts "-------------------------------------------------------"
puts "Respuesta Pregunta 9 (Loops):"
print_plus_ten([4,3,7])
def plus_ten_array(numeros)
	idx = 0
	result_arr = []
	for i in numeros
  		result_arr[idx] = (i + 10)
  		idx += 1
	end
	return result_arr
end
puts "-------------------------------------------------------"
puts "Pruebas Pregunta 10 (Loops):"
p plus_ten_array([4,3,7]) == [14, 13, 17]
# -----------------------------------------------------------------------------------------------------------------------------------------
# Metodos
def odd_or_even_plus(min,max)
	result_arr = []
	idx = 0
	for i in min..max
	  if (i % 2) == 0
	  	result_arr[idx] = (i + 2) 
	  else
	  	result_arr[idx] = (i + 3) 
	  end
	  idx += 1
	end
	return result_arr
end
puts "-------------------------------------------------------"
puts "Pruebas Pregunta 11 (Métodos:):"
p odd_or_even_plus(3, 9) == [6, 6, 8, 8, 10, 10, 12]