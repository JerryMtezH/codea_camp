def separando_hash(hash_data)
	array = []
	hash_data.each {|key, value| array << "Llave: #{key} Valor: #{value}" }
	return array
end
catalogo_tienda = Hash.new
catalogo_tienda[:camisa] = 5
catalogo_tienda[:playera] = 3
catalogo_tienda[:short] = 7
catalogo_tienda[:pantalon] = 2
p separando_hash({ a: 100, b: 200, c: 300, d: 500, e: 1300, w: "Gerardo", z: "40" }) == ["Llave: a Valor: 100", "Llave: b Valor: 200", "Llave: c Valor: 300", "Llave: d Valor: 500", "Llave: e Valor: 1300", "Llave: w Valor: Gerardo", "Llave: z Valor: 40"]
p separando_hash({"manzana"=>5, "pera"=>3, "papaya"=>7, "sandia"=>15}) == ["Llave: manzana Valor: 5", "Llave: pera Valor: 3", "Llave: papaya Valor: 7", "Llave: sandia Valor: 15"]
p separando_hash(catalogo_tienda) == ["Llave: camisa Valor: 5", "Llave: playera Valor: 3", "Llave: short Valor: 7", "Llave: pantalon Valor: 2"]