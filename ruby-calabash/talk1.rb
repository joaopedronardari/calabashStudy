## PRINT ##

# Imprimindo na Tela
puts 'Hello World'

# Inspect para ver como o objeto esta
p 'Hello World'

# Outra forma de prinpar para quando o put ou o p nao conseguir imprimir na tela
print('Hello World')


## METODOS ##

# Simples, sem parametro
def test
	puts 'teste'
end

test

# Com parametros
def test(atributo)
	puts atributo
end

test 'atributo passado'

## SYMBOL ##

# Parecido com uma constante, variavel conforme o escopo
:teste

## Uso de aspas simples e aspas duplas ##
puts 'testes'

s_variable = 's'
# com aspas duplas faz replace, mesmo que nao tenha parametro passado
puts "teste#{s_variable}"

## ARRAY E HASH ##
# Array
x = [1,2,3]

puts x

x = Array.new

puts x

# Hash
x = { :a => 1}
x[:b] = 2

p x
