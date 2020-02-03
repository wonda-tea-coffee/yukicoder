a,b=gets.chomp.split.map &:to_i
puts a>b ? [2e9.to_i-a,0].max+[a-b-1,0].max : a-1+[b-a-1,0].max