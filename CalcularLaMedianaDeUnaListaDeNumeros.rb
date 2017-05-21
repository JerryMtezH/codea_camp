def median(array)
	array.sort!
	# El siguiente codigo es para validar el arreglo despues de ordenarlo.
	# p "-----------------------------------------"
	# p array
	res = array.count.to_f / 2.00
	rem = array.count.to_f % 2.00
	# El siguiente codigo es para validar el Reslutado y el Remanente.
	# Para saber si el numero de elementos del arreglo es par o non.
	# p "res: #{res}"
	# p "rem: #{rem}"
	med = 0
	num1 = 0
	num2 = 0
	if rem == 0
		# El siguiente codigo es para validar que no hay remanente.
		# p "Entro por Remanente 0"
		idx = 0
		array.each do
			if idx == (res-1) or idx == res
				if idx == (res-1)
					num1= array[idx]
					# El siguiente codigo es para validar el valor de num1.
					# p "num1: #{num1}"
				else
					num2= array[idx]
					# El siguiente codigo es para validar el valor de num2.
					# p "num2: #{num2}"
				end	
  			end
  			idx += 1
  		end
  		med = (num1.to_f + num2.to_f) / 2.00
	else
		# El siguiente Codigo es para Validar la condicion.
		# p "Entro por Remanente != 0"
		idx = 0
		rigth_idx = 0 
		array.each do
			# El siguiente Codigo es para Validar la condicion.
			# p "res: #{res} > idx+1: #{idx.to_f+1} y res: #{res} < idx+2: #{idx.to_f+2}"
			if (res > (idx.to_f+1)) and (res < (idx.to_f+2))
				rigth_idx = (idx+1)
  			end
  			if rigth_idx == idx
  				med = array[idx]
  			end
  			# El siguiente Codigo es para Validar el Indice Seleccionado.
  			# p "rigth_idx: #{rigth_idx}"
  			idx += 1
  		end
	end
	return med
end
p median([4, 5, 6]) == 5
p median([-3, 0, 3]) == 0
p median([2, 3, 4, 5]) == 3.5
p median([1, 8, 10]) == 8
# El siguiente codigo se utilizo para validar un arreglo mas complejo.
# p median([1, 3, 4, 5, 7, 9, 15, 2, 10, 11, 14, 0, 12]) == 7