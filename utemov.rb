require 'set'

def rand_n(n, max)
    randoms = Set.new
    loop do
        randoms << rand(max)
        return randoms.to_a if randoms.size >= n
    end
end

def arithmetic(numbers)
	numbers.inject {|sum,n|sum+n}.to_f/ numbers.size
    
end

def geometric(numbers)
    numbers.inject {|multiplication,n|multiplication*n} **(1.0 / numbers.size)
end

numbers = rand_n(10, 50)
p numbers
p arithmetic(numbers)
p geometric(numbers)
