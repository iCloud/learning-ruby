require 'set'

def rand_n(n, max)
    randoms = Set.new
    loop do
        randoms << rand(max)
        return randoms.to_a if randoms.size >= n
    end
end

def arithmetic_mean(numbers)
    numbers.inject(:+) / numbers.size.to_f
    
end

def geometric_mean(numbers)
    numbers.inject(:*) **(1.0 / numbers.size)
end

numbers = rand_n(10, 50)
p numbers
p arithmetic_mean(numbers)
p geometric_mean(numbers)
