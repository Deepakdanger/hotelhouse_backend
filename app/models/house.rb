class House < ApplicationRecord
    has_many :favourites, dependent: :destroy
end
