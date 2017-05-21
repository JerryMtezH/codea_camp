def replace_vowels(array)
	idx = 0
	new_array = Array.new(0)
	array.each do
  		new_array[idx] = array[idx].gsub(/[aeiou]/, 'x')       
  		idx += 1
	end
	# La siguiente linea es para mostrar el resultado del arreglo.
	# p new_array
	return new_array
end
p replace_vowels(["banana", "apple"]) == ["bxnxnx", "xpplx"]