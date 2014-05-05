#Даны действительные числа х, у. Получить: max (x, y) , min (x, y).
require 'set'

def rand_n(n, max)
    randoms = Set.new
    loop do
        randoms << rand(max*10).to_f/10
        return randoms.to_a if randoms.size >= n
    end
end

numbers = rand_n(2, 50)
p numbers
p numbers.max
p numbers.min
