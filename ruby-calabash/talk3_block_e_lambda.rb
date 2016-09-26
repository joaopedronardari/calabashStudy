## BLOCK ##
def test
	puts yield(1) if block_given?
end

# Passa um bloco
test { 'joao pedro' }

test do |x| 
	x + 3
end

test { |x| x + 1 }

# Passando via parametro
def test2(&block)
	puts block.call(1) unless block.nil?
end

test2 { |x| x + 1 }

test2 do |x|
	x + 1
end

## LAMBDA ##
lamb = lambda { 'teste' }
puts lamb.call

lamb = ->() { 'teste com outra maneira' }
puts lamb.call

def test3(lamb, x = 3)
	puts lamb.call(x) unless lamb.nil?
end

lamb = ->(x) { puts x + 1 }

test3 lamb