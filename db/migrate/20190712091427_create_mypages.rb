class CreateMypages < ActiveRecord::Migration[5.2]
  def change
    create_table :mypages do |t|
       t.belongs_to :user, index: true
       t.string :first_name #苗字
       t.string :last_name #名前
       t.string :first_kana #ミョウジ
       t.string :last_kana #ナマエ
       t.string :tel #電話番号
       t.string :postnumber #郵便番号
       t.string :prefecture #都道府県（全角）
       t.string :city #市町村（全角）
       t.string :town #市町村以降（全角）
       t.string :town_number #番地（全角）
       t.string :building #マンション名
      t.timestamps
    end
  end
end
