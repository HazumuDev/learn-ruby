puts "---while---"

ary = [0, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024]
i = 0
while i < ary.length
  puts ary[i]
  i += 1
end

puts "---until---"

j = 10
until j == 0
  puts ary[j]
  j -= 1
end

puts "---for---"

for k, l in [[1, 2], [3, 4], [5, 6]]
  puts "[#{k}, #{l}]"
end

puts "---begin---"

begin
  raise "error message"
rescue => evar
  puts $!
  puts evar
end

puts "---END---"

END{ puts 1 }
END{ puts 2 }
END{ puts 3}
