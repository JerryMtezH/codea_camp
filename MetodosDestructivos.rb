first_name = "Gerardo"
first_name.upcase
p first_name
# Podemos observar que al imprimir la variable first_name, se encuentra en su estado inicial.
#=>"Gerardo"
# Ya que aun usando el metodo upcase los cambios no se guardan al ser llamado de nuevo.
last_name = "Martinez"
last_name.upcase!
p last_name
#Al utilizar el exclamation marks (!),los cambios al utilizar upcase son permanentementes al ser llamada la variable.
#=>"MARTINEZ"

=begin

Resultado:

C:\Users\gmartinez\Documents\codea_camp>Ruby MetodosDestructivos.rb
"Gerardo"
"MARTINEZ"

=end