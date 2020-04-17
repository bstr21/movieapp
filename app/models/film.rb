class Film < ApplicationRecord
    belongs_to :user
    belongs_to :service
    mount_uploader :image, ImageUploader 
    
    has_many :likes
    has_many :liked_users, through: :likes, source: :user

    validates :title, presence: true
end
