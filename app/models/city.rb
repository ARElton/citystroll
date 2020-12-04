class City < ApplicationRecord
    has_many :posts
    has_many :users, through: :posts 


    def self.cities_alph
        sorted = City.all.sort{ |a, b| a.name <=> b.name }
    end

end