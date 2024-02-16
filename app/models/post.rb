class Post < ApplicationRecord
    belongs_to :user
    has_many :postcomments, dependent: :destroy
    has_many :likes, as: :likeable, dependent: :destroy
    validates :title, presence: true
    validates :content, presence: true
    has_one_attached :image
   
end
