('000'..'999').to_a.shuffle.each do |s|
  puts s
  STDOUT.flush
  exit if gets.chomp == 'unlocked'
end