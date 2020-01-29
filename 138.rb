a = gets.chomp.split('.').map(&:to_i)
b = gets.chomp.split('.').map(&:to_i)

3.times do |i|
  if a[i] < b[i]
    puts 'NO'
    exit
  elsif a[i] > b[i]
    puts 'YES'
    exit
  end
end

puts 'YES'