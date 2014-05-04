require 'set'

a = rand(101)
p a
i = 1
n = a
summ=0
while(true)
	if n < 10 
		break
	end
	n /= 10.0
	
	i = i + 1
end
puts "Разрядность: " + i.to_s
n = a
while (n!=0)
	summ = summ + n % 10;
	n /= 10;
end
lastdigit = a % 10
puts "Сумма цифр: " + summ.to_s
puts "Последняя цифра: " + lastdigit.to_s
