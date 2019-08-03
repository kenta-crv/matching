class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.belongs_to :management, index: true
      t.string :agree_check #同意
      t.string :company #苗字
      t.string :store #苗字
      t.string :first_name #苗字
      t.string :last_name #名前
      t.string :first_kana #ミョウジ
      t.string :last_kana #ナマエ
      t.string :tel #電話番号
      t.string :mobile_phone #電話番号
      t.string :e_mail #メールアドレス
      t.string :postnumber #郵便番号
      t.string :prefecture #都道府県（全角）
      t.string :city #市町村（全角）
      t.string :town #市町村以降（全角）
      t.string :town_number #番地（全角）
      t.string :building #マンション名
      t.string :beauty_license #美容許可証
      t.string :drive_license #運転免許証
      t.string :history #美容師歴
      t.string :age
      t.string :picture
      t.string :sub_picture_1
      t.string :sub_picture_2
      t.string :sub_picture_3
      t.string :sub_picture_4
      t.timestamps
    end
  end
end
