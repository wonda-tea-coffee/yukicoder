x, y = gets.chomp.split.map(&:to_r)
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_r)
a.each_cons(2) do |ai, aj|
  # aj m地点まで来るのに師匠がどれくらい時間がかかるのか求める(= t時間)
  # t = aj / 1000 / y
  # t時間でkobaが何m進むのか求める(= d m)
  # d = t * x * 1000
  if aj / y * x < ai
    puts 'NO'
    exit
  end
end

puts 'YES'