#Dany dva deystvitel'nyh chisla. Zamenit' pervoe chislo nulem, esli ono men'she ili ravno vtoromu, i ostavit' chisla bez izmeneniya v protivnom sluchae.
require 'set'

def rand_n(n, max)
    randoms = Set.new
    loop do
        randoms << rand(max)
        return randoms.to_a if randoms.size >= n
    end
end

numbers = rand_n(2, 50)

if numbers[0] <= numbers[1]
	then numbers[0] = 0
end


p numbers

