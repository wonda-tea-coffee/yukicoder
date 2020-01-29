h = {
  'RED' => 0,
  'BLUE' => 0
}
h[gets.chomp] += 1
h[gets.chomp] += 1
h[gets.chomp] += 1
puts h['RED'] > h['BLUE'] ? 'RED' : 'BLUE'