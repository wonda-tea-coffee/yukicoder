N = gets.to_i
q = Array.new(1<<N){[]}
a = []
(1<<N).times do |i|
  q[i] = gets.split.map(&:to_i)
  a[i] = q[i].pop
end

print "A="
if a.uniq.size == 1
  puts a[0] == 1 ? "⊤" : "⊥"
  exit
end

ans = []
(1<<N).times do |i|
  if a[i] == 1
    arr = []
    N.times do |k|
      str = (q[i][k] == 1 ? "" : "¬") + "P_#{k+1}"
      arr.push(str)
    end
    ans.push("(" + arr.join("∧") + ")")
  end
end
puts ans.join("∨")