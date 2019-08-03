class Mypage < ApplicationRecord
#  has_many :active_relationships,class_name: "Relationship", foreing_key: "follower_id", dependent: :destroy
#  has_many :following, through: :active_relationships

 #has_many :active_relationships,class_name:  "Relationship", foreign_key: "follower_id", dependent: :destroy
 #has_many :following, through: :active_relationships
 belongs_to :user
 has_one :detail, dependent: :destroy
end
