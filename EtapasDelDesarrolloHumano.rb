print "¿Cual es su edad? "
edad = gets.to_i
case edad
when 0..6
  puts "Infancia"
when 7..12
  puts "Niñez"
when 13..20
  puts "Adolescencia"
when 21..25
  puts "Adolescencia"
when 26..60
  puts "Adultez"
else
  puts "Ancianidad"
end