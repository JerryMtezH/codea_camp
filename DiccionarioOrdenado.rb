word=""
idx = 0
words_array = []
words_upcase = []
while true
	if idx == 0
		puts "Escribe una palabra:"
	else
		puts "Escribe otra palabra(o presiona 'Enter' para finalizar):"
	end
	word = gets.chomp
	if word.strip.empty?
		break
	else
		if word.strip.count("0-9") > 0
		   puts "Cuidado!! no existen palabras con numeros, checalo pls!!!"
		else   	
		   words_array[idx]=word
		   idx += 1
		end
	end
end
idx=0
if words_array.count != 0
	words_array.each do |x|
		words_upcase[idx] = x.upcase
		idx += 1
	end
	# En este codigo debajo es en donde se construye el arreglo de
	# indices que le correspondera a cada elemento en el arreglo
	# words_upcase despues de ser ordenado con el .sort
	index_order = []
	words_upcase.uniq.sort.each do |a|
	  index_order += words_upcase.each_index.select{|i| words_upcase[i] == a }
	end
	r = []
	index_order.each_with_index do |a, i|
	   r[a] = i
	end
	# Para comprobar el contenido del orden de los indices.
	# p r
	words_upcase.sort!
	# Para comprobar el contenido despues de ordenarlo en mayusculas.
	# p words_upcase
	puts "Felicidades! Tu diccionario tiene #{words_upcase.count} palabras:" 
	idx = 0
	#original_idx = 0
	while idx < words_upcase.count
	  #original_idx = r.index(idx) 
	  puts words_array[r.index(idx)]
	  idx += 1
	end
end