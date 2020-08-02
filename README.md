# 新人研修 4回目(meshiterro)
## 始めに
- **当研修課題についての質問はNGです。ご了承お願いします。**

## 研修内容について
- このアプリケーションは、meshiterroにいくつかのエラーを仕込んだものです。
  - 下に示されている計8個のエラーが起こりますので、
    - どういうエラーか
    - どこに解決の糸口が書いてあるのか
    - どこを修正すれば良いのか
  - を説明できるよう、実際に動かしてしっかり確認して下さい。
- 加えて、以下の内容を説明できるようにしておいてください。
  - アソシエーションとは
    - 必要な手順(カラム追加&モデルに記述)
    - @user.post_images, @post_image.userの意味
    - `〇〇_id`が空の状態で保存しようとするとどうなるか
  - refileの使用法
    - カラムの追加&モデルに記述
    - refileの基本的な仕様
	- いいね機能
	  - いいねの作成と削除
	  - すでにいいねしているかどうかの判定(favorited_by?メソッド)
	- routing
	  - resourcesとresourceの違い
	  - ネストについて
	- パラメーター
	  - ターミナルのどこにparameterが出力されているか
	  - paramsメソッドとは(何を受け取ることができるか)
	  - ストロングパラメーターで受け取れる値について

## ログイン
- email: a@a
- password: pppppp

## エラー
### ルートパス(ログイン後)
NoMethodError ×3
1. undefined method 'user'
2. undefined method 'profile_image'
3. undefined method 'user_path'

### /post_images/4 ※詳細ページならどれでも可
4. ArgumentError
5. いいね作成時にActiveRecord::RecordNotFound
6. コメント投稿ができない (rollback transaction)
