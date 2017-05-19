def decade(anio)
	last2 = anio.to_s[2,2]
	last2_num = last2.to_i
	case last2_num
	when 1..9
	  	"nineteen-hundreds"
	when 10..19
	   	"teens"
	when 20..29
	   "Twenties"
	when 30..39
	   "Thirties"
	when 40..49
	   "Forties"
	when 50..59
	   "Fifties"
	when 60..69
	   "Sixties"
	when 70..79
	   "Seventies"
	when 80..89
	   "Eighties"
	when 90..99
	   "Nineties"
	end
end
p decade(1920) == "Twenties"
p decade(1943) == "Forties"
p decade(1952) == "Fifties"
p decade(1960) == "Sixties"
p decade(1975) == "Seventies"
p decade(1982) == "Eighties"
p decade(1999) == "Nineties"