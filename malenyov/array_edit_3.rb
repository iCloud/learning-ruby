#Dany deystvitel'nye chisla x, y. Esli h i u otricatel'ny, to kajdoe znachenie zamenit' ego modulem; esli otricatel'no tol'ko odno iz nih, to oba znacheniya uvelichit' na 0.5; esli oba znacheniya neotricatel'ny i ni odno iz nih ne prinadlejit otrezku [0.5, 2.0], to oba znacheniya umen'shit' v 10 raz; v ostal'nyh sluchayah h i u ostavit' bez izmeneniya.
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
if
	numbers[0] < 0 && numbers[1] <0
	numbers[0] = -numbers[0]
	numbers[1] = -numbers[1]
	elsif
		numbers[0] < 0 || numbers[1] < 0
		numbers[0] = numbers[0] + 0.5
    numbers[1] = numbers[1] + 0.5
  elsif  !((numbers[0] > 0.5 && numbers[0] < 2.0) || (numbers[1] > 0.5 && numbers[1] < 2.0))
  numbers[0] = numbers[0] / 10.0
  numbers[1] = numbers[1] / 10.0
end

p numbers
