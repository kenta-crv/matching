class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #いいね
  has_many :likes, dependent: :destroy
  has_many :likes_users, through: :likes, source: :company
  #メッセージ
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy
  def already_liked?(user)
    self.likes.exists?(user_id: user.id)
  end
end
