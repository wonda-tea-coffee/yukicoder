class Man
  attr_reader :name, :height, :weight
  def initialize(name:, height:, weight:)
    @name = name
    @height = height
    @weight = weight
  end
end

mans = []
('A'..'C').each do |name|
  h, w = gets.chomp.split.map(&:to_i)
  mans << Man.new(name: name, height: h, weight: w)
end

mans = mans.sort do |m1, m2|
  if m1.height > m2.height
    0
  elsif m1.height < m2.height
    1
  else
    m1.weight < m2.weight ? 0 : 1
  end
end

mans.each do |m|
  puts m.name
end