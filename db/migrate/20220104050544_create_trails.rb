class CreateTrails < ActiveRecord::Migration[6.1]
  def change
    create_table :trails do |t|
      t.string :trail_name
      t.string :trail_url
    end
  end
end
