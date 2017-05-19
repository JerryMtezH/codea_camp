def multiplication_tables(tabla)
	puts ""
	puts "Tabla de Multiplicar del #{tabla}:"
	tabla.times do |x|
        puts ""
		r = 0
		10.times do |y|
			r = (x+1) * (y+1)
			if r.to_s.length == 1
				print "#{r}    "
			elsif r.to_s.length == 2
				print "#{r}   "
			elsif r.to_s.length == 3
				print "#{r}  "
			elsif r.to_s.length == 4
				print "#{r} "
			end
		end
	end
	puts ""
	puts ""
end
multiplication_tables(5)
multiplication_tables(7)
multiplication_tables(50)