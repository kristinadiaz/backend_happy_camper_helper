class Season < ActiveRecord::Base 
    has_many :items
    has_many :trails, through: :items

end