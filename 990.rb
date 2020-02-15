N, M, K = gets.chomp.split.map!(&:to_i)
op, *B = gets.chomp.split
B.map!(&:to_i)

A = [] * N
N.times{ A << gets.chomp.to_i }

z = 0
if op == '+'
  h = Hash.new(0)
  B.each do |bi|
    h[bi % K] += 1
  end
  A.each do |ai|
    z += h[-ai % K]
  end
else
  da = Hash.new(0)
  db = Hash.new(0)
  A.each do |ai|
    da[ai.gcd(K)] += 1
  end
  B.each do |bi|
    db[bi.gcd(K)] += 1
  end
  da.each do |ka, va|
    db.each do |kb, vb|
      if ka * kb % K == 0
        z += va * vb
      end
    end
  end
end
puts z