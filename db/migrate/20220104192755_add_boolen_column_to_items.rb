class AddBoolenColumnToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :added, :boolean
  end
end 