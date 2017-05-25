# Parte 1 ----------------------------------------------------------
# Crea el método vowels que recibe una lista de palabras words y 
# remueve las vocales de cada string. Haz pasar la prueba 
# correspondiente.
def vowels(array)
	result_arr = []
	final_array = []
	idx = 0
	for i in array
  		result_arr = i.strip.split("")
  		# Para validar el contenido de la palabra dividida.
  		# p result_arr
  		result_word = ""
  		for i1 in result_arr
  			# Para validar el contenido de cada letra en el arreglo.
  			# p i1
  			if "aeiou".count(i1) == 0
  				result_word = result_word.strip + i1
  			end
  		end	
  		final_array[idx] = result_word
  		idx += 1
	end
	return final_array
end 
puts "------------------------------------------------------------"
puts "Prueba Parte 1 (Metodo vowels):"
p vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"]
# Parte 2 ----------------------------------------------------------
# Dados dos números, que pueden ser positivos y negativos, encuentra la 
# suma de todos los números entre ellos, incluyendo esos números 
# también. Si los dos números son iguales, regresa alguno de los dos.
def get_sum(num1,num2)
	r = 0
	if num1 == num2
		r = num1
	else
		if num1 < num2
			for i in num1..num2
			    r += i
			end
		else
			r = (num1 + num2)	
		end	
	end
	return r
end
puts "------------------------------------------------------------"
puts "Prueba Parte 2 (Suma de números):"
p get_sum(1, 0) == 1
p get_sum(1, 2) == 3
p get_sum(0, 1) == 1
p get_sum(1, 1) == 1
p get_sum(-1, 0) == -1
p get_sum(-1, 2) == 2
# Parte 3 ----------------------------------------------------------
# Crea un método que reciba una oración y regrese un string 
# señalándonos el número de palabras y caracteres que contiene, 
# sin contar los espacios en blanco.
def char_word_counter(text_to_evaluate)
	chars = 0
	words = 0
	arr = text_to_evaluate.strip.split(" ")
	for i in arr
  		chars += i.strip.length
  		words += 1
  	end
  	"This sentence has #{words} words & #{chars} characters"
end
puts "------------------------------------------------------------"
puts "Prueba Parte 3 (Palabras y caracteres):"
p char_word_counter("This is a sentence") == "This sentence has 4 words & 15 characters"
p char_word_counter("This easy") == "This sentence has 2 words & 8 characters"
p char_word_counter("This is a very complex line of code to test our program") == "This sentence has 12 words & 44 characters"
p char_word_counter("And when she needs a shelter from reality she takes a dip in my daydreams") == "This sentence has 15 words & 59 characters"
# Parte 4 ----------------------------------------------------------
# Ahora vamos a aprovechar los Hashes como herramienta de organización 
# para distinguir alimentos por grupo alimenticio. Para esto deberás 
# generar un método que tome como parámetro un string que contenga una 
# comida, y buscarlo en el siguiente hash, regresando su key como valor 
# de retorno, si no encuentra la comida deberá regresar 
# "comida no encontrada".
def food_group(find_string)
	food_groups = {
    "grano" => ['Arroz','Trigo', 'Avena', 'Cebada', 'Harina'],
    "vegetal" => ['Zanahoria', 'Maiz', 'Elote', 'Calabaza', 'Papa'],
    "fruta" => ['Manzana', 'Mango', 'Fresa', 'Durazno', 'Piña'],
    "carne" => ['Res', 'Pollo', 'Salmon', 'Pescado', 'Cerdo'],
    "lacteo" => ['Leche', 'Yogurt', 'Queso', 'Crema']
    }
    result = ""
    food_groups.each do |key, arr_in_hash|
    	# Para Validar el contenido de las Variables dentro del loop.
    	# p "key = #{key} arr_in_hash = #{arr_in_hash}"
    	# p "find_string = #{find_string}"
  		if arr_in_hash.include?(find_string)
  			result = key
  			break
  		else
			result = "comida no encontrada"
  		end
	end
	return result
end
puts "------------------------------------------------------------"
puts "Prueba Parte 4 (Buscando en hashes):"
p food_group('Crema') == "lacteo"
p food_group('Res') == "carne"
p food_group('Piña') == "fruta"
p food_group('Caña') == "comida no encontrada"