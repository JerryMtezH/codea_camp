def mode(array)
	array.sort!
	idx = 0
	new_idx = 0
	dup_idx = 0
	new_array = []
	dup_array = []
	array.each do
		if not new_array.include?(array[idx])
  			new_array[new_idx] = array[idx]
  			new_idx += 1
  		else
  			if not dup_array.include?(array[idx])
  				dup_array[dup_idx] = array[idx]
  				dup_idx += 1
  			end	
  		end	
  		idx += 1
	end
	if dup_array.count != 0
		return dup_array
	else
		return new_array
	end
end
p mode([1, 2, 2, 3]) == [2]
p mode([1, 2, 2, 3, 3, 4]) == [2, 3]
p mode([1, 2, 3]) == [1, 2, 3]
p mode([0, 1, 2, 3, 4, 0]) == [0]