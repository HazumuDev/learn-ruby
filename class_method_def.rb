puts "---class---"

module Net
  class HTTP
    def test
      puts "HTTP test"
    end
  end

  class FTP
    def test
      puts "FTP test"
    end
  end
end

obj1 = Net::HTTP.new
obj1.test

include Net
obj2 = FTP.new
obj2.test

puts "---method def---"

def fact(n)
  if n == 1 then
    p 1
  else
    p n * fact(n - 1)
  end
end
fact(5)

puts "----------------"

def hello
  puts "Hello, Ruby!!"
end
hello

def foo(a= 5, b=5)
  p a + 3 * b
end
foo
foo(9)
foo(2, 7)

puts "----------------"

def foo2(cnt, &block_arg)
  cnt.times { block_arg.call }
end
foo2(3) { print "Ruby!! " }
print "\n"


puts "----------------"

def f(a, b, c, m = 1, n = 1, *rest, x, y, z, k: 1, **kwrest, &blk)
  puts "a: %p" % a
  puts "b: %p" % b
  puts "c: %p" % c
  puts "m: %p" % m
  puts "n: %p" % n
  puts "rest: %p" % rest
  puts "x: %p" % x
  puts "y: %p" % y
  puts "z: %p" % z
  puts "k: %p" % k
  puts "kwrest: %p" % kwrest
  puts "blk: %p" % blk
end

f("a", "b", "c", 2, 3, "foo", "bar", "baz", "x", "y", "z", k: 42, u: "unknown") { }


puts "----------------"

def foo
  if block_given?
    yield(1, 2)
  end
end

def bar
  if block_given?
    Proc.new.call(1, 2)
  end
end

def foo(block = Proc.new)
  block.call(1, 2)
end
foo(proc { |a, b| p [a, b] })
foo { |a, b| p [a, b] }

def baz(&block)
  if block
    block.call(1, 2)
  end
end
