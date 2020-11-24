#class C
class C
  def initialize
    @ary = [0, 1, 2, 3, 4, 5, 6, 7]
  end

  def [](i)
    @ary[i * 2]
  end

  def []=(i, v)
    @ary[i * 2] = v
  end
end

c = C.new
puts c[3]
puts c[3] = 1


#class D
class D
  def foo
    @foo
  end

  def foo=(v)
    @foo = v
  end
end

d = D.new
d.foo = 5
puts d.foo

#class E
class E
  def foo=(v)
    @foo = v
    puts @foo
  end

  def []=(i, v)
    @bar = ['a', 'b', 'c']
    @bar[i] = v
    print "#{@bar}\n"
  end
end

obj = E.new
obj.foo, obj[2] = 1, 2
