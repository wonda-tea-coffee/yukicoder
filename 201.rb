sa, pa, xb = gets.chomp.split
sb, pb, xb = gets.chomp.split

pa = pa.to_i
pb = pb.to_i

if pa > pb
  puts sa
elsif pa < pb
  puts sb
else
  puts -1
end