# 次の条件を満たすクラス、Argsを作成してください
# 特に指定のない限り、作成するメソッドはすべてpublicです
#
# 1.
#   3つの引数を取るメソッド `calc` を作成してください
#   1つ目の引数の文字列を、2つ目の引数の数だけ並べ、その文字列を3つ目の引数の数に等しい長さの配列の要素として新しい配列を作成し返してください
#   ただし、3つ目の引数はオプショナルとし、省略した場合は2つ目の引数と同じ数字を利用します
#   例： calc("hoge", 2, 3) # => ["hogehoge", "hogehoge", "hogehoge"]
#
# 2.
#   2つのキーワード引数arrayとkeywordを取るメソッド、 `count_object` を作成してください。
#   arrayの各要素の中に、keywordが何回現れるかを返してください
#   ただし、arrayはデフォルトで空の配列が与えられるものとします
#
# 3.
#   2つのキーワード引数benriとsugoiを取るメソッド、 `configure` を作成してください
#   また、2つのキーワード引数の他に、オプショナルでキーワード引数を取得できるようにしてください
#   オプショナルなキーワード引数のうち、 `c_` で始まるキーワードが渡された場合には、benriとsugoiと同様の挙動をしてください。ただし、キーワードを扱うときに `c_` の文字列は取り除いてください。
#   `c_` で始まるオプショナルなキーワードを扱うときは、文字列でソートした順に扱ってください。
#   benriとyabaiの内容を、 "Configure 'keyword' as 'value'" の文字列で出力してください。keywordはキーワード、valueはキーワードに渡された値でそれぞれ埋めてください。
#   `c_` で始まるキーワードに関しては、この二つの後に出力してください
#
#   例： configure(benri: "yabai", sugoi: "oniyabai", c_hoge: "uhyo-", c_foo: "iihanashi")
#        # =>
#         Configure 'benri' as 'yabai'
#         Configure 'sugoi' as 'oniyabai'
#         Configure 'foo' as 'iihanashi'
#         Configure 'hoge' as 'uhyo-'


class Args

  def calc(str, multiNum, loopNum = 0)

    arrObj = Array.new

    if loopNum == 0
      l = multiNum
    else
      l = loopNum
    end


    l.times do |n|
      arrObj[n] = "#{str * multiNum}"
    end

    return arrObj
  end

  def count_object(arr=Array.new, keyword)

    arrObj = arr.inject(Hash.new(0)) do |res, item|
      res[item] += 1
      res
    end

    return arrObj[keyword]
  end

  def configure(benri: benrisugi, sugoi: sugosugi, **options)

    p "Configure 'benri' as #{benri}"
    p "Configure 'sugoi as #{sugoi}"

    #c_OO以外のキーワードを考慮したバージョン
    arr = Hash.new
    temp_c = Hash.new
    temp_nc = Hash.new

    Hash[options].each do |k, v|
      if k.start_with?('c_')
          temp_c[ k.to_s.delete('c_') ] = v
      else
          temp_nc[ k.to_s ] = v
      end
    end

    arr = Hash[temp_c.sort].merge(temp_nc)

    arr.each do |k, v|
        p "Configure '#{k}' as #{v}"
    end

#c_OOのキーワード以外もソートしてしまうバージョン
#    Hash[ options.sort ].each do |k, v|
#        if k.start_with?('c_')
#          p "Configure '#{k.to_s.delete('c_')}' as #{v}"
#        else
#          p "Configure '#{k.to_s}' as #{v}"
#        end
#    end

  end

end

puts "---1---"
a = Args.new
res = a.calc("hoge", 2, 8)
p res

puts "\n---2---"
inputArray = ["a", "b", "a", "c", "a", "b", "c", "c"]
res = a.count_object(inputArray, "c")
p inputArray
p res

puts "\n---3---"
a.configure(benri: "yabai", sugoi: "oniyabai", c_hoge: "uhyo-", c_foo: "iihanashi", a_nyan: "nekosuke")
