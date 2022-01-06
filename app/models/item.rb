class Item < ActiveRecord::Base 
    belongs_to :season
    belongs_to :trail
    belongs_to :my_list 
end