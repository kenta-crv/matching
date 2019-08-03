class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :mypage, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :likes_managements, through: :likes, source: :management
end
