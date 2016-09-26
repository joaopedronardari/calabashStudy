# Maneira diferente de declarar hash
# x = { 'Agência' => 1500 }
x = { 'Agência': 1500}

puts x['Agência'.to_sym]

## CLASSES ##
class Test

	# constante da classe, so a primeira letra como maiuscula ja torna uma constante
	# porem eh boa pratica colocar tudo como maiuscula
	COUNT = 1

	# variavel da classe (static)
	@@name = 'JP'

	# get
	attr_accessor :text

	# construtor com valor default
	def initialize(text = 'hello')
		@text = text
	end

	def hello
		puts @text
	end

	# metodo da classe (static)
	#def self.get_name
	#	puts @@name
	#end

	#def self.set_name name
	#	@@name = name
	#end

	# outra maneira de static
	class << self
		def get_name
			puts @@name
		end

		def set_name name
			@@name = name
		end
	end
end

t = Test.new 'Hello'

p t.to_s

t.hello
puts t.text

Test.get_name
Test.set_name 'Joao Pedro'
Test.get_name

## MODULOS ##

module Core
	class Test
		def self.hello
			puts 'hello from class from module'
		end
	end

	# modulo pode ter seus metodos tambem
	def self.name
		puts 'Core'
	end

	# pode criar um metodo de instancia
	def nameCore name
		puts name
	end 
end

module Core2
	class Test
		def self.hello
			puts 'hello from class from module 2'
		end
	end

	# modulo pode ter seus metodos tambem
	def self.name
		puts 'Core 2'
	end
end

Core::Test.hello
Core2::Test.hello

# Incluindo codigo do modulo core
class Test2
	include Core
end

Test2.new.nameCore 'JP'

# Heranca de classe
class Foo < Test2
end

Foo.new.nameCore 'Joao Pedro'