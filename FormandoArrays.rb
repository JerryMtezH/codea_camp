def array_index(array1,num_elem)
	new_elem = array1.count.to_i * num_elem.to_i
	new_array = Array.new(new_elem) { Array.new(2) }
	# Las siguientes Lineas Son para Validar lo que ser recibe
	# Por Parametro, y la cantidad de elementos en el nuevo
	# Arreglo de Arreglos.
	# puts "------------------------------------------------------"
	# puts "Parametros de Entrada y Nuevo Numero de Elementos:"
	# puts "Arreglo: #{array1}"
	# puts "Elementos: #{num_elem}"
	# puts "------------------------------------------------------"
	# puts "Nuevo Arreglo Creado:"
	# puts "Elementos: #{new_elem}"
	# puts "Arreglo: #{new_array}"
	# puts "------------------------------------------------------"
	# puts "Indices y Valores:"
	idx=0
	idx1=0
	array1.count.to_i.times do
		idx2 = 0
		num_elem.to_i.times do
	    	new_array[idx][0] = array1[idx1]
	    	idx2 += 1
	    	new_array[idx][1] = idx2
	    	idx += 1
	    	# Las siguientes 3 lineas son unicamente para validar lo que
	    	# Contienen los Indices.
	    	# puts "idx: #{idx}"
	    	# puts "array1[idx1]: #{array1[idx1]}"
	    	# puts "idx2: #{idx2}"
	    end
		idx1 += 1
	end
	#La siguiente linea es para Mostrar lo que Tiene el Arreglo Resultado:
	# puts "------------------------------------------------------"
	# puts "Arreglo Resultado:"
	# p new_array
	return new_array
end
p array_index(["c", "b", "a"], 2) == [["c", 1], ["c", 2], ["b", 1], ["b", 2], ["a", 1], ["a", 2]]
p array_index(["a"], 3) == [["a", 1], ["a", 2], ["a", 3]]