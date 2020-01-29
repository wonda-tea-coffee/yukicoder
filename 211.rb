k = gets.chomp.to_i
a = [0]*201
[2,3,5,7,11,13].each do |i|
  [4,6,8,9,10,12].each do |j|
    a[i*j] += 1
  end
end
puts printf("%.17f", a[k]/36.to_f)