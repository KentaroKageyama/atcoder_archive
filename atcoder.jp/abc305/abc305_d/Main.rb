N = gets.to_i
# 寝起きした時間配列
times = gets.split.map(&:to_i)
# 寝起きした時間に対応した睡眠時間の累積和（初期値に0を入れておく）
sleeps = [0]
# 偶奇を見て寝起き分岐
(times.size - 1).times do |i|
  i += 1
  if i.even?
    sleeps << sleeps[i - 1] + times[i] - times[i - 1]
  else
    sleeps << sleeps[i - 1]
  end
end
# x分までの睡眠時間計算メソッド
def sleep_minits(times, sleeps, x)
  # 時間配列からbegin <= x <= endとなるbegin,endを取得
  end_idx = times.bsearch_index{|a| a >= x}
  return 0 if end_idx == 0
  begin_idx = end_idx - 1
  # beginとendの睡眠時間が同じなら起きている時間
  if sleeps[begin_idx] == sleeps[end_idx]
    return sleeps[begin_idx]
  else
    return sleeps[begin_idx] + (x - times[begin_idx])
  end
end
Q = gets.to_i
Q.times do |i|
  l, r = gets.split.map(&:to_i)
  puts sleep_minits(times, sleeps, r) - sleep_minits(times, sleeps, l)
end