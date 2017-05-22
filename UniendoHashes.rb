class Une_hashes
  def method(p1, p2, p3)
  	individual = {}
  	result = {}
  	local_variables.each do |var|
      # El siguiente Codigo es para validar el
      # resultado del "eval var.to_s" usar
      # una variable con el nombre de una variable.
      # p var.to_s
      # puts eval var.to_s
      individual = (eval var.to_s)
      # La siguiente linea es para mostrar en forma de arreglo
      # Las llaves y los valores, pero debido a que solo 
      # tiene una llave y un valor, se construye de forma individual.
      #a = individual.keys[0]
      #b = individual.values[0]
      result[individual.keys[0]] = individual.values[0]
      # p result
    end
    result
  end
end
def join_hash(hash1,hash2,hash3)
	Une_hashes.new().method(hash1, hash2, hash3)
end

fruit = {name: "pineapple"}
weight = {weight: "1 kg"}
taste = {taste: "good"}

p join_hash(fruit, weight, taste) == {:name=>"pineapple", :weight=>"1 kg", :taste=>"good"} 