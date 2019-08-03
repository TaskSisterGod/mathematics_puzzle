#メモ化と動的計画法

#メモ
M,N = 10,100

@memo = {}
def check(remain,pre)
	return @memo[[remain,pre]] if @memo[[remain,pre]]
	#配置するひとがなくなると終了
	if(remain == 0) return 1
	if(remain < 0) return 0
	cnt = 0

	pre.upto(M) do |i|
		cnt += check(remain - i,i) 
	end
	@memo[[remain,pre]] = cnt
end

put check(N,2)

#動的計画法
table = new Array.new(M+1) {Array.new(N+1) {0}}

0.upto(M){
	|i| table[i][0] = 1
}

1.upto(M) do |i|
	2.upto(N) do |j|
		if(i >= 2) && (j>=1)
			table[i][j] = table[i][j-i]
		end
		table[i][j] += table[i - 1][j] if i > 2
	end
end

puts table[M][N]