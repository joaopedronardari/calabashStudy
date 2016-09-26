# IF E UNLESS #

if 1 == 1
	puts 'foi'
elsif 2 == 2
	puts 'elsif'	
else
	puts 'nao rolou'
end

x = nil

if x.nil?
	puts 'x is nil'
else
	puts 'x isnt nil'
end

x = 1

unless x.nil?
	puts 'x isnt nil'
else
	puts 'x is nil'
end

# Estranho no Ruby por conta das duas interrogacoes
x = x.nil? ? 1 : 2
