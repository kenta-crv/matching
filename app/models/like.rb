class Like < ApplicationRecord
  belongs_to :management
  belongs_to :user
  validates_uniqueness_of :management_id, score: :user_id
  #valiudates_uniqueness_ofで組が１組しかないことを定義
end
