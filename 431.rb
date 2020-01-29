a,b,c,s=gets.chomp.split.map &:to_i
puts s==1||a+b+c<2?'SURVIVED':'DEAD'