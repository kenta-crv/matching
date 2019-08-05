# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :user_name,          null: false, default: ""
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :agree_check, null: false, default: ""
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
      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
