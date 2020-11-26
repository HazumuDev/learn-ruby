puts "---call limits---"

class Foo
  def foo
    puts "call"
    p caller.last
  end
  protected :foo
end

obj = Foo.new
obj.foo rescue nil

class Foo
  Foo.new.foo rescue nil
  
  def bar
    self.foo
  end
end
Foo.new.bar

def obj.bar
  self.foo rescue nil
end
obj.bar


puts "---call scope---"

def foo
  puts "call foo"
end

class C
  def bar
    puts "call C.bar"
  end

  def ok
    puts "call C.ok"
  end
  private :ok

  def initialize
    puts "call initialize"
  end

  def callOk
    self.ok
  end
end

foo
cObj = C.new
cObj.bar
cObj.callOk
#cObj.ok


puts "---alias---"

def fooRename
  "foo"
end

alias :_orig_foo :fooRename

def fooRename
  _orig_foo * 2
end

p fooRename


$_ = 1
alias $foo $_
$_ = 2
p [$foo, $_]

$bar = 3
alias $foo $bar
$bar = 4
p [$foo, $bar]


puts "---undef & defined?---"
def fooRemove
  puts "call fooRemove"
end

p defined? fooRemove
undef fooRemove
p defined? fooRemove