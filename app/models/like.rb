class Like < ApplicationRecord
  belongs_to :company
  belongs_to :user
  #validates_uniqueness_of :company_id, score: :user_id
end
