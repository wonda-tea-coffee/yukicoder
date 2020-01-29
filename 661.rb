i = gets.chomp.to_i
i.times do
  ni = gets.chomp.to_i
  if ni % 40 == 0
    puts 'ikisugi'
  elsif ni % 10 == 0
    puts 'sugi'
  elsif ni % 8 == 0
    puts 'iki'
  else
    puts ni / 3
  end
end