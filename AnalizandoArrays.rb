array = ["pegamento", 7, 18, [24, ["refresco", "sprite"]], 12, { "firstname" => "Mark", "lastname" => "Martin", "age" => "24", "gender" => "M" }]

# Parte 1 --------------------------------------------------------------
p array.index(7)
# Devuelve el 1 porque el numero 7 esta en el indice 1 del arreglo, 
# En el siguiente ejemplo se muestran los indices en donde se encuentran
# el 18 y la palabra "pegamento"
p array.index(18)
p array.index("pegamento")
# Devielve el 2 en donde esta el 18 
# Devuelve el 0 que es el indice en donde esta la palbra "pegamento"

# Parte 2 --------------------------------------------------------------
# En el siguiente ejemplo se posiciona en el indice 5 que es un hash y 
# posteriormente utiliza la clave 'firstname' para obtener el valor de 
# esta que es "Mark"
p array[5]['firstname']

# Parte 3 --------------------------------------------------------------
# En el siguiente ejemplo se posiciona en el indice 3 que es una segunda 
# dimension o arreglo, luego en el elemento 1 que es un tercer arreglo o 
# tercera dimension, y por ultimo el elemento 1 contiene "sprite"
p array[3][1][1]

=begin
Resultado:
C:\Users\gmartinez\Documents\codea_camp>Ruby AnalizandoArrays.rb
1
2
0
"Mark"
"sprite"
=end	
