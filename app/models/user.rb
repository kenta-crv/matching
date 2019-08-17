class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #いいね
  has_many :likes, dependent: :destroy
  has_many :likes_companies, through: :likes, source: :company
  #メッセージ
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy
  def already_liked?(company)
    binding.pry
    ## companyがnilだったのが、エラーだったので
    ## > companyが入ってるか確認する
    self.likes.exists?(company_id: company.id)
  end
end
