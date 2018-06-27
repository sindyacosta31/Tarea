a = 'Ejercicio6.rb'
if(File.exist?(a)) 
	file=a
	File.readlines(file).each do |line|
	puts line
end
else 
puts "El archivo #{a} no existe"
end