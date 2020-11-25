puts "---super---"

class Foo
  def foo(arg=nil)
    if (arg == nil)
      puts "nil"
    else
      puts arg
    end
  end
end

class Bar < Foo
  def foo(arg)
    super(5)
    super(arg)
    super
    arg = 1
    super
    super()
  end
end

Bar.new.foo 5


puts "---block method call---"

[1, 2, 3].each do |i| print i * 2 end
puts "\n"
[1, 2, 3].each { |i| print i * 2 }
puts "\n"

puts "-----------------------"

pobj = proc { |v|
  puts v
}
[1, 2, 3].each(&pobj)


puts "---yield---"

def foo
  yield(1, 2)
end

foo { |a, b|
  puts "[#{a}, #{b}]"
}

foo { |a, b|
  puts a + b
}

puts "-----------"

def bar
  yield 10
  yield 20
  yield 30
end

bar { |v|
  puts v + 3
}

puts "-----------"

def iich(arr)
  idx = 0
  while idx < arr.size
    yield(arr[idx])
    idx += 1
  end
end

sum = 0
iich([1, 4, 9, 16, 25]) { |elem|
  sum += elem
}
puts sum


puts "---block parameter---"

def foo
  yield 1, 2, 3
end

foo{ |v| puts v }

puts "---------------------"

def bar
  yield [1, 2, 3]
end

bar{ |a, b, c| puts "#{a}, #{b}, #{c}" }

puts "---------------------"

def hoge
  yield [1, 2, 3], 4, 5
end

hoge{ |a, b, c| p a }
