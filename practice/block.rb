# 次の要件を満たすクラス、LearnBlockを作成してください　
#
# 1.
# 次の仕様を満たすメソッド `ext_sum` を作成してください
# 引数を2つと、その2つを `+` で結合した後の値を引数に取るブロックの3つを引数に取ります
# ただし、ブロックを渡さなくても動作します
# ブロックを受け取った場合、メソッドの戻り値はブロックの戻り値と等しい
# ブロックを受け取らなかった場合、メソッドの戻り値はブロックに渡す予定だった値と等しい
#
# 2.
# 次の仕様を満たすメソッド `search_unknown` を作成してください
# 引数を2つ受け取ります、1つ目の引数は必ず数値の配列です
# 1つ目の引数の中から、2つ目の引数を加えるとちょうど5の倍数になる数値だけを取り出して、新しい配列を作成し戻り値としてください
# ただし、LearnBlockクラスには、この仕様とは全く関係ないメソッド `unknown_number` メソッドが定義されていると仮定します(このメソッドは実装する必要はありません）
# 2つ目の引数を加える前に、必ずこの `unknown_number` の戻り値を、1つ目の引数の各数値に加えてから計算してください
# また、 `unknown_number` メソッドは、一度しか呼び出すことはできません

class LearnBlock

  def ext_sum(a, b, &blk)
    c = blk.call(a, b)
    puts "ext_sum = #{c}"
  end

  def search_unknown(arr, addNum)
    resArr = Array.new

    unknown_number(arr).each_with_index { |n, i|
      if (n + addNum) % 5 == 0
        resArr << arr[i]
      end
    }
    return resArr
  end

  def unknown_number(arr)
    uNumberArr = arr.map{ |n|
      n + 15
    }
  end

end

lb = LearnBlock.new
lb.ext_sum(7, 8) do |n, m|
  n + m
end

puts "-----------"

num = [11, 17, 21, 28, 31, 32, 36, 38, 41, 46]
puts "INPUT = #{num}"
puts "unknown_number = [26, 32, 36, 43, 46, 47, 51, 53, 56, 61]"
result = lb.search_unknown(num, 4)

puts "\nsearch_unknown = #{result}"
