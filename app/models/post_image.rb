class PostImage < ApplicationRecord

    validates :shop_name, presence: true
    validates :image, presence: true
    
    
    attachment :image
    has_many :post_comments, dependent: :destroy
    has_many :favorites, dependent: :destroy
    belongs_to :user

    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end
end
