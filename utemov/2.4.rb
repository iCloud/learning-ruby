#Даны действительные числа x, y. Если х и у отрицательны, то каждое значение заменить его модулем; если 
#отрицательно только одно из них, то оба значения увеличить на 0.5; если оба значения неотрицательны и ни одно из
#них не принадлежит отрезку [0.5, 2.0], то оба значения уменьшить в 10 раз; в остальных случаях х и у оставить 
#без изменения.
require 'set'

def rand_n(n, max)
	randoms = Set.new
	loop do
		randoms << rand(max*2)-max
		return randoms.to_a if randoms.size >= n
	end
end


numbers = rand_n(2, 10)
p numbers
if numbers[0] < 0 && numbers[1] < 0 
	numbers[0]=-numbers[0]
	numbers[1]=-numbers[1]
elsif numbers[0] < 0 || numbers[1] < 0
	numbers[0]=numbers[0]+0.5
	numbers[1]=numbers[1]+0.5
elsif !((numbers[0] >= 0.5 && numbers[0] <= 2.0) || (numbers[1] >= 0.5 && numbers[1] <= 2.0))
	numbers[0]=numbers[0]/10.0
	numbers[1]=numbers[1]/10.0	
end	
p numbers
