class CreateUsers < ActiveRecord::Migration[5.1]
  # chegeメソッド:データベースに与える変更を定義。create_tableというRailsのメソッドを呼び、ユーザーを保存するためのテーブルをデータベースに作成
  def change
    # create_tableメソッドはブロック変数を1つ持つブロックを受け取る。ここでは (“table”の頭文字を取って) t
    # create_tableメソッドはtオブジェクトを使ってnameカラムとemailカラムをデータベースに作る
    create_table :users do |t|
      t.string :name
      t.string :email
      # created_atとupdated_atという２つの「マジックカラム (Magic Columns)」を作成
      t.timestamps
    end
  end
end
