print " the string\n next line\n"

#here doc
puts "---here docment---\n"
print <<EOS
 the string
 next line
EOS

puts "---here docment2---\n"
print <<FIRST, <<SECOND
 これは一つ目のドキュメントです。
FIRST
 ここからは二つ目のドキュメントです。
SECOND

puts "---symbol---\n"
puts :'foo-bar'
puts :"foo-bar"
puts %s{foo-bar}
