##FOR##
for i in 1..10
	p i
end

x = [1,2,3]

for i in x
	p i
end

##FOR EACH##
x.each { |value| p value }

##SELECT##
y = x.select { |value| value == 1 }

p y

y = x.select { |value| value > 1 }

p y