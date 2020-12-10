# Ruby学習


## 参考
Yay! ー SmartHR Ruby教材
https://github.com/HazumuDev/yay

公式ドキュメント等
https://github.com/HazumuDev/yay/tree/master/00_references

---

## 旧バージョンRubyインストール時に詰まったのでメモ

- rbenvにてinsstall時に発生するエラー

```
$ rbenv install x.x.x

> Last 10 log lines:
> The Ruby yaml extension was not compiled.
> ERROR: XXXXXXXXXXXXX
```

- 対処法

```
rm -rf /usr/local/lib/ruby/gems/x.x.x/gems/psych-x.x.x
rm -rf /usr/local/lib/ruby/gems/x.x.x/extensions/x86_64-darwin-16/x.x.x/psych-x.x.x
```

- その他の対処法
```
brew reinstall packagename(openssl, ruby-build, rbenv, etc...)
```
