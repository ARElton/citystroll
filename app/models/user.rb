class User < ApplicationRecord
    has_many :posts
    has_many :cities, through: :posts
    has_many :favorites
<<<<<<< HEAD
    validates :name, presence: true 
    #validates :age, numericality: { greater_than: 8 }
    validates :username, uniqueness: { case_sensitive: false }
    validates :password, presence: true
=======
    # validates :name, presence: true 
    # # validates :age, numericality: { greater_than: 8 }
    # validates :username, uniqueness: { case_sensitive: false }
    # validates :password, presence: true
>>>>>>> b08411baf3462b7768e02c3a2c4b235efdb96bef

    has_secure_password

end
