class Post < ApplicationRecord
    belongs_to :user 
    belongs_to :city 
    has_many :comments
    validates :title, presence: true 
    validates :link, presence: true 
    
end
