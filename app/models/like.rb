class Like < ApplicationRecord
  belongs_to :company, optional: true
  belongs_to :user, optional: true
  #validates_uniqueness_of :company_id, score: :user_id
end
