
# puts("Hello, Ruby!!");


# a = 30;
# b = 40;
# c = a + b;
# puts(c);

# #----------class inherited 1----------

# class Foo
#     @@foo = 1;
#     puts(@@foo);
# end

# class Bar < Foo
#     puts @@foo += 1;
# end

# class Baz < Bar
#     puts @@foo += 1;
# end

# #----------module include----------

# module Foo
#     @@foo = 1;
#     puts @@foo;
# end

# class Bar
#     include Foo;
#     puts @@foo += 1;
# end

# class Baz
#     include Foo;
#     puts @@foo += 1;
# end

#----------class inherited 2----------

# class Foo
# end

# class Bar < Foo
#     @@v = :bar;
# end

# class Foo
#     @@v = :foo;
# end

# class Bar
#     puts @@v;
# end


#----------class scope----------

class Foo
    @@a = :a;
    
    class << Foo
        puts @@a;
    end

    def Foo.a1
        puts @@a;
    end
end

Foo.a1