#Dany tri deystvitel'nyh chislay. Vozvesti v kvadrat te iz nihb znacheniya kotoryh neotricatel'nyyu

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

sqrt = numbers.map! do |num|
	if num > 0
		num ** 2
	else
		num
	end
	
end
result = numbers.select {|num| num > 0}
p result