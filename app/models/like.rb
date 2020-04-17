class Like < ApplicationRecord
  belongs_to :film
  belongs_to :user
  validates_uniqueness_of :film_id, scope: :user_id
end
