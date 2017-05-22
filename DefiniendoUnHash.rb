# Asi se pueden definir los hash
# La unica forma con la que se puede acceder al dato cuando se
# ha definido con : y Hash.new es buscando el dato con :nombre_etiqueda
# Si el hash se ha definido con llaves {} se puede buscar con el texto
# dentro de comillas.

#Parte 1:
catalogo_tienda = Hash.new
catalogo_tienda[:camisa] = 5
catalogo_tienda[:playera] = 3
catalogo_tienda[:short] = 7
catalogo_tienda[:pantalon] = 2
puts "------------------------------------------------------------------" 
p "(Parte 1) Obtener las camisas en existencia" 
p catalogo_tienda[:camisa]
puts "------------------------------------------------------------------" 
# Para trabajas con la longitud del hash, o mostrar todo.
# p catalogo_tienda.length   
# p catalogo_tienda

#Ejemplo 2 (No requerido en el ejercicio):
# persona = Hash.new
# persona[:nombre] = "Uriel"
# persona[:apellido] = "Monk"
# p persona[:nombre]

#Parte 2:
#frutas = {
#  "banana" => "platano",
#  "strawberry" => "fresa",
#  "lime" => "limon"
#}

#puts frutas
#p frutas["lime"]
# Ejercicio 2:
p "(Parte 2) Adicionar una nueva fruta al hash canasta_de_frutas"
new_hash = {}
canasta_de_frutas = {"manzana" => 5, "pera" => 3, "papaya" => 7}
p canasta_de_frutas == {"manzana"=>5, "pera"=>3, "papaya"=>7}
canasta_de_frutas.merge!({"sandia" => 15})
p canasta_de_frutas == {"manzana"=>5, "pera"=>3, "papaya"=>7, "sandia"=>15}
fruta_seleccionada = canasta_de_frutas["pera"]
p "Existen #{fruta_seleccionada} peras"