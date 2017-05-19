def user
	idx=0
	loop do
 		 print "Ingrese un Texto: "
 		 valor=gets.chomp
 		 idx += 1
 		 break if valor == "Ya"
	end
	msg = "Numero de entradas del usuario: #{idx}"
	return msg
end
p user