N, A, B, C = gets.split.map(&:to_i)
@l_a = []
@min = Float::INFINITY
@flg = []
N.times do |i|
    @l_a << gets.to_i
end
def dfs(n)
    if n == N
        a, b, c = [0, 0, 0]
        cnt_a, cnt_b, cnt_c = [0, 0, 0]
        N.times do |i|
            case @flg[i]
            when 1
                a += @l_a[i]
                cnt_a += 1
            when 2
                b += @l_a[i]
                cnt_b += 1
            when 3
                c += @l_a[i]
                cnt_c += 1
            end
        end
        return if cnt_a == 0 || cnt_b == 0 || cnt_c == 0
        mp = (cnt_a - 1) * 10 + (cnt_b - 1) * 10 + (cnt_c - 1) * 10
        mp += (A - a).abs + (B - b).abs + (C - c).abs
        @min = [@min, mp].min
        return
    end
    (1..4).each do |i|
        @flg[n] = i
        dfs(n+1)
    end
end
dfs(0)
puts @min