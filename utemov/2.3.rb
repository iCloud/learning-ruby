#Даны три действительных числа. Возвести в квадрат те из них, значения которых неотрицательны.
require 'set'

def rand_n(n, max)
	randoms = Set.new
	loop do
		randoms << rand(max*2)-max
		return randoms.to_a if randoms.size >= n
	end
end


numbers = rand_n(3, 50)
p numbers
numbers.map! do |i|
	if i > 0 
		i ** (2)
	else
		i
	end
end
		
p numbers
