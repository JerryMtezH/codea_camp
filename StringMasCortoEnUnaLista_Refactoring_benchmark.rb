require 'benchmark'

# Metodo Refactorizado:

def shortest_refactored(evaluation_array)
	length = []
	result_array = []
    evaluation_array.each{ |a| length << a.length}
    shortest_length = length.sort[0]
    for z in length.size.times.select {|i| length[i] == shortest_length}
       	result_array << evaluation_array[z]
    end
    result_array
end

# Metodo Original:

def shortest_original(array)
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

# Benchmark de ambos metodos:

puts ""
puts "Llamada: shortest_*(['uno', 'dos', 'tres', 'cuatro', 'cinco', 'seis', 'veinticinco', 'treinta']) "	
puts ""
puts "Original:" 
puts ""
Benchmark.bm do |bm|
  bm.report { shortest_original(['uno', 'dos', 'tres', 'cuatro', 'cinco', 'seis', 'veinticinco', 'treinta']) }
end
puts ""
puts "Refactored:" 
puts ""
Benchmark.bm do |bm|
  bm.report { shortest_refactored(['uno', 'dos', 'tres', 'cuatro', 'cinco', 'seis', 'veinticinco', 'treinta']) }
end