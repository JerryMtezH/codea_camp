def valores(hash_data)
	array = []
	hash_data.each_value {|value| array << value }	
	return array
end
catalogo_tienda = Hash.new
catalogo_tienda[:camisa] = 5
catalogo_tienda[:playera] = 3
catalogo_tienda[:short] = 7
catalogo_tienda[:pantalon] = 2
p valores({ a: 100, b: 200, c: 300, d: 500, e: 1300, w: "Gerardo", z: "40" }) == [100, 200, 300, 500, 1300, "Gerardo", "40"]
p valores({"manzana"=>5, "pera"=>3, "papaya"=>7, "sandia"=>15}) == [5, 3, 7, 15]
p valores(catalogo_tienda) == [5, 3, 7, 2]