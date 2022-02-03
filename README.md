

## ネットワークインタフェース名を確認するコマンド  
netsh interface ip show config


## コマンドプロンプトにて文字コードを明示する方法
|コマンド|文字コード|
|---|---|
|chcp 932|shift_jis|
|chcp 65001|utf-8|

## IPセット
netsh interface ip set address "＜インターフェイス名＞" static ＜IPアドレス＞ ＜ネットマスク＞ ＜ゲートウェイ＞ ＜メトリック＞