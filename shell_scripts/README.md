## xargs

### カレントディレクトリのフォルダだけ処理させたい！

```
ls -d */ | xargs -I {} ./shell.sh {}

```

### 指定したディレクトリのファイルをコピーしたい


#### cpコマンドで上書き許可
https://qiita.com/owlbeck/items/6752a6f1b3fb58d0cb17


## grep 

### 該当する単語のある行からn行目まで知りたい
```
grep -A2 hoge target.txt
```


## sed

```
#1~26行目まで削除して標準出力に表示(元ファイルは消さない)
 sed '1,26d' passwd
```


### ファイル一覧を取得してfor-loopで処理したい！

(時間のかかる処理はbackground実行で処理)

```
for file in $(find . -maxdepth 1 -type f|grep -v .md) ; do  
    echo "$file";
    sleep 10 & 
done

./.gitignore
[1] 7084
./abc.txt
[2] 7085
$ jobs
[1]-  Done                    sleep 10
[2]+  Done                    sleep 10

```