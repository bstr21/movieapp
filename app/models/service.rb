class Service < ApplicationRecord
    has_many :films, -> { order('created_at DESC') }, dependent: :destroy
end
