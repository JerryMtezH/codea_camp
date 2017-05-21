def longest(array)
	idx = 0
	long_length=0
	array.each do
		#p "Loop 1 array[idx].strip.length : #{array[idx].strip.length}"
  		if array[idx].strip.length > long_length || long_length == 0
  			long_length = array[idx].strip.length
  			#p "Loop 1 long_length : #{long_length}" 
  		end	
  		idx += 1
	end
	if long_length != 0
		#p "Dentro long_length : #{long_length}" 
		new_array = Array.new(0)
		idx = 0
		new_idx = 0
		array.each do
			#p "Loop 2 array[idx].strip.length : #{array[idx].strip.length}" 
			#p "Loop 2 idx : #{idx}"
  			if array[idx].strip.length == long_length
  				#p "Loop 2 array[idx].strip : #{array[idx].strip}"
  				new_array[new_idx] = array[idx].strip 
  				new_idx += 1
  			end
  			idx += 1	
  		end
	end
	return new_array
end
p longest(['tres', 'pez', 'alerta', 'cuatro', 'tesla', 'tropas', 'siete']) == ["alerta", "cuatro", "tropas"]
p longest(['gato', 'perro', 'elefante', 'jirafa']) == ["elefante"]
p longest(['verde', 'rojo', 'negro', 'morado']) == ["morado"]