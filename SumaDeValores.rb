numeros = [1,2,3,4,5,6,7,8,9,10]

puts "Con For:"
for i in numeros
  puts i + 5
end

puts "Con Do While:"
idx = 0
while idx < numeros.count
  puts numeros[idx] + 5
  idx += 1
end

puts "Con Do Until:"
idx = 0
until idx > (numeros.count - 1)
  puts numeros[idx] + 5
  idx += 1
end

puts "Con Do Loop:"
idx = 0
loop do
  puts numeros[idx] + 5
  idx += 1
  break if idx >= 10
end

puts "Con Do .each:"
idx = 0
numeros.each do
  puts numeros[idx] + 5
  idx += 1
end

puts "Con Do .times:"
idx = 0
numeros.count.times do
  puts numeros[idx] + 5
  idx += 1
end