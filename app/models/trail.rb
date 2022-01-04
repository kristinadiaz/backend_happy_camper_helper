class Trail < ActiveRecord::Base 
    has_many :items
    has_many :seasons, through: :items
end