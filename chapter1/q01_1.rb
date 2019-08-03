N = 100

cnt = 0

0.upto(N) do |rock|
	0.upto(N - rock) do |scissors|
		paper = N - scissors - rock
		all = [rock,scissors,paper]
		cnt += 1 if all.count(all.max) == 1
	end
end

puts cnt


#別パターン
0.upto(N) do |l|
	1.upto(N) do |r|
		all = [l,r-l,N-r]
		cnt += 1 if all.count(all.max) == 1
	end
end

puts cnt