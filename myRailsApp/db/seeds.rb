5.times do |n|
  b = Blog.create(title: "blog #{n}")
  Random.rand(1..4).times do |_n|
    b.entries << Entry.create(name: "entry #{_n}", body: "あ" * _n)
  end
end
