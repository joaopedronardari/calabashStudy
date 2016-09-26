##RESCUE##

# dispara um erro
begin
	raise ArgumentError, 'erro detectado!'
rescue ArgumentError => e
	puts "Argumento Inválido #{e}"
rescue => e
	puts "Exception #{e}"
end

def metodoTest
	raise KeyError, 'erro detectado!'
rescue ArgumentError => e
	puts "Argumento Inválido #{e}"
rescue => e
	puts "Exception #{e}"
end

metodoTest

