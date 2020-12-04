class User < ApplicationRecord
    has_many :posts
    has_many :cities, through: :posts
    has_many :favorites
    # validates :name, presence: true 
    # validates :age, numericality: { greater_than: 8 }
    # validates :username, uniqueness: { case_sensitive: false }
    # validates :password, presence: true

    has_secure_password

end
