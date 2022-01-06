class CreateMyLists < ActiveRecord::Migration[6.1]
  def change
    create_table :my_lists do |t|
      t.references :item 
    end
  end
end
