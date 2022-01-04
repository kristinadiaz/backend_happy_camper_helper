class Item < ActiveRecord::Base 
    belongs_to :seasons
    belongs_to :trails

    def test
        binding.pry
    end
    
    
end