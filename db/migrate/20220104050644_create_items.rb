class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :shopping_url
      t.string :image_url
      t.references :season 
      t.references :trail
    end
  end
end
