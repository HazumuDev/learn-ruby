# 次の要件を満たすクラス、SymbolManipulatorを作成してください
#
# 1.
# クラスメソッド `hash_key_switcher` を持ち、引数を一つ受け取ります
# 引数がハッシュのオブジェクトではない場合、何もせずオブジェクトをそのまま返します
#
# 2.
# `hash_key_switcher` は、引数のハッシュに次の操作をして、新しいハッシュを返します
#   a. 引数のハッシュのキーのうち、全てのStringオブジェクトをSymbolオブジェクトに変換し、バリューはそのまま保持します
#   b. 引数のハッシュのキーのうち、全てのSymbolオブジェクトをStringオブジェクトに変換し、バリューはそのまま保持します
#   b. 引数のハッシュのキーのうち、SymbolでもStringでもないものをSymbolオブジェクトに変換し、バリューはそのまま保持します
# すなわち、次の入力のときには、このような戻り値を期待します
# > input
#    { hoge: "foo", "piyo" => :boom, 1 => "one" }
# < output
#   { "hoge" => "foo", :piyo => :boom, :"1" => "one" }

class SymbolManipulator
  def hash_key_switcher(hashObj)
    resArr = {}

    if hashObj.is_a?(Hash)
      hashObj.each do |k, v|
        if k.is_a?(String)
          resArr[k.to_sym] = v
        elsif k.is_a?(Symbol)
          resArr[k.to_s] = v
        else
          resArr[k.to_s] = v
        end
      end
    else
      resArr = hashObj
    end

    return resArr
  end
end


input_hash = { hoge: "foo", "piyo" => :boom, 1 => "one" }

sm = SymbolManipulator.new
reslut = sm.hash_key_switcher(input_hash)

p input_hash
p reslut
