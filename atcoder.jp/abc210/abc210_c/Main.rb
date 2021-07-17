N, K = gets.split(" ").map!(&:to_i)
nums = gets.split(" ").map!(&:to_i)
mp = {}

K.times do |i|
    if mp[nums[i]].nil?
        mp[nums[i]] = 1
    else
        mp[nums[i]] += 1
    end
end

ans = mp.length

(K..N - 1).each do |i|
    if mp[nums[i]].nil?
        mp[nums[i]] = 1
    else
        mp[nums[i]] += 1
    end
    
    mp[nums[i - K]] -= 1
    if mp[nums[i - K]] == 0
        mp.delete(nums[i - K])
    end
    
    ans = mp.length if ans < mp.length
end

puts ans