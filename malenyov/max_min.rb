require 'set'

def rand_n(n, max)
    randoms = Set.new
    loop do
        randoms << rand(max)
        return randoms.to_a if randoms.size >= 2
    end
end

numbers = rand_n(10, 50)

p numbers
p  "maximum element is " + numbers.max.to_s
p  "minimum element is " + numbers.min.to_s 
