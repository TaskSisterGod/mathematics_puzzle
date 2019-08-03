N = 30

def check(num)
	light = [6,2,5,5,4,4,6,3,7,6]
	light[num/10] + light[num%10]
end

cnt = 0

24.times do |h|
	60.times do |m|
		60.times do |s|
			cnt += 1 if check(h) + check(m) + check(s) == 30
		end
	end
end

puts cnt