class Item < ActiveRecord::Base 
    belongs_to :season
    belongs_to :trail

    def test
        binding.pry
    end
    
end