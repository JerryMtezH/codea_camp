numeros = [10,13,23,45,50,1,76,3]
resultado = [0,0,0,0,0,0,0]
idx = 0
for i in numeros
	resultado[idx] = i+20
	idx += 1
end
p resultado