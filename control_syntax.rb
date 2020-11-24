age = 28

puts "---if---"

if age >= 12 then
  puts "adult fee"
else
  puts "child fee"
end

puts "---unless---"

unless age >= 12 then
  puts "child fee"
else
  puts "adult fee"
end

puts "---case---"

case age
when 0..2
  puts "baby"
when 3..6
  puts "little child"
when 7..12
  puts "child"
when 13..18
  puts "youth"
else
  puts "adult"
end

puts "----------"

v = 3
ary = [1, 2, 3]
case v
when *ary
  puts v
end
