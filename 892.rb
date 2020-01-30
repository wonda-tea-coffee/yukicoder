a = gets.chomp.split.map(&:to_i)
puts (a[0]+a[2]+a[4])%2==0 ? ':-)' : ':-('