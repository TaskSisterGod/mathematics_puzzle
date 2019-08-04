W,N = 1000,20

def cut(w,h)
	return 1 if w == h
	w,h = h,w if w > h
	q,r = h.divmod(w)
	result = q
	result += cut(w,r) if r > 0
	result
end

cnt = 0
1.upto(W) do |i| #短辺
	1.upto(W) do |j| #長辺
		cnt += 1 if cut(i,j) == N
	end
end

puts cnt