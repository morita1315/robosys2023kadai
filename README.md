# robosys2023kadai
ロボットシステムの課題で使用する

## plusコマンド

[![test](https://github.com/morita1315/robosys2023kadai/actions/workflows/test.yml/badge.svg)](https://github.com/morita1315/robosys2023kadai/actions/workflows/test.yml)

## リポジトリの説明
標準入力から読み込んだ数字を足す。数値以外の入力を受け取った場合エラーメッセージを出力する。

## 機能
**数値の合計**：plusスクリプトは、標準入力から一行ずつ数値を読み取り、それらを合計する。合計は標準出力に出力される。

**エラーハンドリング**: 数値以外の入力（文字列や空の行など）が与えられた場合、スクリプトはエラーメッセージを出力し、エラーコード1で終了する

## 使用方法
以下のように使用します

```bash
$ echo -e "5\n10\n15\n20" | ./plus
50
```


```bash
$ seq 5 | ./plus
15
```


```bash
$ echo "あ"　| ./plus
Invalid input: not a number 
```

## 必要なソフトウェア
* python　
  * テスト済み: 3.7~3.10

## テスト環境
* Ubuntu22.04.2LTS

## 著作権、ライセンス  
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます
* このパッケージのコマンドとコードは下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
	* (https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* ©　2023 Atsuya Morita

