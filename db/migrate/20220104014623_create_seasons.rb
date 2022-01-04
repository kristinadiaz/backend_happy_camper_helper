class CreateSeasons < ActiveRecord::Migration[6.1]
  def change
    create_table :seasons do |t|
      t.string :season_name
      t.integer :degree
      t.references :item
      t.references :trail 
    end
  end
end
