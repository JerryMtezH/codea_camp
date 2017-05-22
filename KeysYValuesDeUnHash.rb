def separando_hash(hash_data)
	array = []
	hash_data.each {|key, value| puts "La llave del Hash es #{key} y su valor es #{value}" }
	return ""
end
catalogo_tienda = Hash.new
catalogo_tienda[:camisa] = 5
catalogo_tienda[:playera] = 3
catalogo_tienda[:short] = 7
catalogo_tienda[:pantalon] = 2
puts separando_hash({ a: 100, b: 200, c: 300, d: 500, e: 1300, w: "Gerardo", z: "40" })
puts separando_hash({"manzana"=>5, "pera"=>3, "papaya"=>7, "sandia"=>15})
puts separando_hash(catalogo_tienda)