def shortest(evaluation_array)
	length = []
    evaluation_array.each{ |a| length << a.length}
    shortest_length = length.sort[0]
    result_array = []
    for z in length.size.times.select {|i| length[i] == shortest_length}
       	result_array << evaluation_array[z]
    end
    result_array
end
p shortest(['uno', 'dos', 'tres', 'cuatro', 'cinco']) == ["uno", "dos"]
p shortest(['gato', 'perro', 'elefante', 'jirafa']) == ["gato"]
p shortest(['verde', 'rojo', 'negro', 'morado']) == ["rojo"]