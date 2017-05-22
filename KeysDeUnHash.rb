def llaves(hash_data)
	array = []
	hash_data.each_key {|llave| array << llave }	
	return array
end
catalogo_tienda = Hash.new
catalogo_tienda[:camisa] = 5
catalogo_tienda[:playera] = 3
catalogo_tienda[:short] = 7
catalogo_tienda[:pantalon] = 2
p llaves({ a: 100, b: 200, c: 300, d: 500, e: 1300, w: "Gerardo", z: "40" }) == [:a, :b, :c, :d, :e, :w, :z]
p llaves({"manzana"=>5, "pera"=>3, "papaya"=>7, "sandia"=>15}) == ["manzana", "pera", "papaya", "sandia"]
p llaves(catalogo_tienda) == [:camisa, :playera, :short, :pantalon]