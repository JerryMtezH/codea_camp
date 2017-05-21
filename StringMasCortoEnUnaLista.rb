def shortest(array)
	idx = 0
	short_length=0
	array.each do
		#p "Loop 1 array[idx].strip.length : #{array[idx].strip.length}"
  		if array[idx].strip.length < short_length || short_length == 0
  			short_length = array[idx].strip.length
  			#p "Loop 1 short_length : #{short_length}" 
  		end	
  		idx += 1
	end
	if short_length != 0
		#p "Dentro short_length : #{short_length}" 
		new_array = Array.new(0)
		idx = 0
		new_idx = 0
		array.each do
			#p "Loop 2 array[idx].strip.length : #{array[idx].strip.length}" 
			#p "Loop 2 idx : #{idx}"
  			if array[idx].strip.length == short_length
  				#p "Loop 2 array[idx].strip : #{array[idx].strip}"
  				new_array[new_idx] = array[idx].strip 
  				new_idx += 1
  			end
  			idx += 1	
  		end
	end
	return new_array
end
p shortest(['uno', 'dos', 'tres', 'cuatro', 'cinco']) == ["uno", "dos"]
p shortest(['gato', 'perro', 'elefante', 'jirafa']) == ["gato"]
p shortest(['verde', 'rojo', 'negro', 'morado']) == ["rojo"]