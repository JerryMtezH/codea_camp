texto="HoLa MuNdo"
puts "La variable texto tiene: #{texto}"
puts "Mayusculas #{texto.upcase}"
puts "Minusculas #{texto.downcase}"
if texto.start_with?("H")
	puts "Comienza con H"
else
	puts "No comienza con H"
end
if texto.end_with?("o")
	puts "Termina con o"
else
	puts "No Termina con o"
end
puts "Los 2 Primeros Caracteres de texto son: #{texto[0,2]}"
puts "Los 2 Ultimos Caracteres de texto son: #{texto[-2,2]}"
puts "Los caracteres en las posiciones 3-4 y 6-7 de texto son: #{texto[2,2]} y #{texto[5,2]}"
texto[2,2]="lA"
puts "La variable texto cambio a: #{texto}"
texto[5,2]="mU"
puts "La variable texto cambio a: #{texto}"
puts "Cambia texto a Mayuscula solo la primer letra: #{texto.capitalize}"
puts "El primer caracter de texto es #{texto.chr}"
puts "La variable texto contiene #{texto.count "o"} letras 'o'"
new_text = ""
if texto.empty?
    puts "La variable new_text esta vacia"
else
    puts "La variable new_text Tiene el Valor: #{new_text}"
end
new_text = texto.upcase
if texto.empty?
    puts "La variable new_text esta vacia"
else
    puts "La variable new_text Tiene el Valor: #{new_text}"
end
puts "La variable new_text cambia a #{new_text.sub("DO","DITO")}"
puts "La variable new_text cambia a #{new_text.gsub("O","°")}"
if new_text.gsub("O","°").include?("°")
	puts "El texto '#{new_text.gsub("O","°")}' Incluye '°'"
else
	puts "El texto '#{new_text.gsub("O","°")}' No incluye '°'"
end
puts "El texto '#{new_text.gsub("O","°")}' tiene #{new_text.gsub("O","°").count('°')} caracteres '°'"
puts "El Método new_text.index(\"H\")   devuelve un valor: #{new_text.index("H")}"
puts "El Método new_text.index(\"O\")   devuelve un valor: #{new_text.index("O")}"
puts "El Método new_text.index(\"L\")   devuelve un valor: #{new_text.index("L")}"
puts "El Método new_text.index(\"A\")   devuelve un valor: #{new_text.index("A")}"
puts "El Método new_text.index(\" \")   devuelve un valor: #{new_text.index(" ")}"
puts "El Método new_text.index(\"M\")   devuelve un valor: #{new_text.index("M")}"
puts "El Método new_text.index(\"U\")   devuelve un valor: #{new_text.index("U")}"
puts "El Método new_text.index(\"N\")   devuelve un valor: #{new_text.index("N")}"
puts "El Método new_text.index(\"D\")   devuelve un valor: #{new_text.index("D")}"
puts "El Método new_text.index(\"O\",2) devuelve un valor: #{new_text.index("O",2)}"
puts "El Método new_text.reverse devuelve un valor: #{new_text.reverse}"
puts "El Método new_text.split(//) devuelve un valor: #{new_text.split(//)}"
puts "El Método new_text.split(' ') devuelve un valor: #{new_text.split(' ')}"
puts "El Método new_text.split('O') devuelve un valor: #{new_text.split('O')}"
one_new_world = "    " + new_text.strip + "      "
puts "la variable one_new_world tiene el valor: '#{one_new_world}'"
puts "El Método one_new_world.strip devuelve un valor: '#{one_new_world.strip}'"