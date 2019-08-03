class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.references :mypage, foreign_key: true
      #写真
      t.string :main_picture #メイン写真
      t.string :sub_picture_1 #サブ写真
      t.string :sub_picture_2 #サブ写真
      t.string :sub_picture_3 #サブ写真
      t.string :sub_picture_4 #サブ写真
      #職務経歴書
      t.date :graduate_date #卒業年月日
      t.string :graduate_school #卒業学校名

      t.date :enter_date_1 #入社年月日
      t.string :work_1 #企業名
      t.string :position_1 #役職
      t.date :retirement_date_1 #退社日
      t.date :enter_date_2 #入社年月日
      t.string :work_2 #企業名
      t.string :position_2 #役職
      t.date :retirement_date_2 #退社日
      t.date :enter_date_3 #入社年月日
      t.string :work_3 #企業名
      t.string :position_3 #役職
      t.date :retirement_date_3 #退社日
      t.date :enter_date_4 #入社年月日
      t.string :work_4 #企業名
      t.string :position_4 #役職
      t.date :retirement_date_4 #退社日
      t.date :enter_date_5 #入社年月日
      t.string :work_5 #企業名
      t.string :position_5 #役職
      t.date :retirement_date_5 #退社日

      t.string :comment #意気込み
      #other
      t.string :beauty_license #美容師免許
      t.string :drive_license #運転免許証
      t.integer :history #美容師歴
      t.integer :age #年齢
      t.timestamps
    end
  end
end
