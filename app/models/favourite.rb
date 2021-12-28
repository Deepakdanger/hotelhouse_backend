class Favourite < ApplicationRecord
  validates :user_id, uniqueness: { scope: :house_id }
  belongs_to :user
  belongs_to :house
end
