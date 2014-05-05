#Дано натуральное число n (n>99). Определить число сотен в нем. 
require 'set'

def rand_n(n, max)
    randoms = Set.new
    loop do
        randoms << rand(max*2)-max
        return randoms.to_a if randoms.size >= n
    end
end

a = rand(1000)+100
p a
p a/100
