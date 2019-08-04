class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :likes, dependent: :destroy
  has_many :likes_companies, through: :likes, source: :company
  def already_liked?(company)
    self.likes.exists?(company_id: company.id)
  end
end
