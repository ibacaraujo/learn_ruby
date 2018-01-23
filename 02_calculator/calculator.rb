def add(n1, n2)
	return n1 + n2
end

def subtract(n1, n2)
	return n1 - n2
end

def sum(array)
	sum = 0
	array.each {|n| sum += n}
	return sum
end

def multiply(array)
	multiplication = 1
	array.each {|n| multiplication *= n}
	return multiplication
end

def power(b, e)
	return b ** e
end

def factorial(n)
	if n == 0
		return 0
	end
	factorial = 1
	for i in 1..n
		factorial *= i
	end
	return factorial
end