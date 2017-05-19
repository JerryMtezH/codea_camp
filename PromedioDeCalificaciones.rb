def average(arr)
	total=0   
  	arr.each do |i|
    	total += i
    end
  	total.to_f / arr.count.to_f
end
p average([8, 8, 7, 6, 9]) == 7.6
p average([5, 5, 5, 8, 8, 7, 7, 7]) == 6.5
p average([5, 5, 5, 8, 8, 7, 7, 2]) == 5.875