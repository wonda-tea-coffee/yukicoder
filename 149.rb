aw, ab = gets.chomp.split.map(&:to_i)
bw, bb = gets.chomp.split.map(&:to_i)
c, d = gets.chomp.split.map(&:to_i)

# AからBへの黒い碁石の移動
m1 = [ab, c].min
bb += m1
ab -= m1
# AからBへの白い碁石の移動
m2 = c - m1
bw += m2
aw -= m2
# BからAへの白い碁石の移動
m3 = [bw, d].min
aw += m3

puts aw