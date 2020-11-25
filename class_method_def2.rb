puts "---class method def---"

class Hoge
  def Hoge.foo
    puts "This is foo"
  end
end

def Hoge.bar
end

class Hoge
  def self.baz
    puts "This is baz"
  end
end

class << Hoge
  def bar
    puts "This is bar"
  end
end

module Foo
  def foo
    puts "This is module Foo.foo"
  end
end

class Hoge
  extend Foo
end

Hoge.foo
Hoge.bar
Hoge.baz


