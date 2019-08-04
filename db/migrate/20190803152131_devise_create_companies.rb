# frozen_string_literal: true

class DeviseCreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
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

    add_index :companies, :email,                unique: true
    add_index :companies, :reset_password_token, unique: true
    # add_index :companies, :confirmation_token,   unique: true
    # add_index :companies, :unlock_token,         unique: true
  end
end
