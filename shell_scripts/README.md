## xargs

### カレントディレクトリのフォルダだけ処理させたい！

```
ls -d */ | xargs -I {} ./shell.sh {}

```

### 指定したディレクトリのファイルをコピーしたい


#### cpコマンドで上書き許可
https://qiita.com/owlbeck/items/6752a6f1b3fb58d0cb17