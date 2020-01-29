class Integer
  def fzbz
    a = self
    return 8 if a % 15 == 0
    return 4 if a % 3 == 0 || a % 5 == 0
    a.digits.size
  end
end

puts gets.chomp.split.map(&:to_i).map(&:fzbz).sum