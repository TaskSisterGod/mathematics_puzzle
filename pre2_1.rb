# 順列
def nPr(n,r)
	result = 1
	r.upto(n) do |i|
		result *= i
	end
	result
end

# 組み合わせ
@memo = [1]
def factorial(n)
	return @memo[n] if @memo[n]
	@memo[n] = n * factorial(n - 1)
end

def nCr(n,r)
	factorial(n) / (factorial(r) * factorial(n - r))
end